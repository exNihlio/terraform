#!/usr/bin/env bash
# Copied and modified from https://github.com/kelseyhightower/kubernetes-the-hard-way/blob/master/docs/04-certificate-authority.md
export ASCII_RED="\u001b[31;1m"
export ASCII_RESET="\u001b[0m"

## Etcd IP addresses
export ETCD_HOST_1_IP="10.72.5.46"
export ETCD_HOST_2_IP="10.72.6.153"
export ETCD_HOST_3_IP="10.72.7.41"

declare -A IP_ADDRESSES

IP_ADDRESSES=(["etcd-node-1.okd.dev"]=${ETCD_HOST_1_IP}
              ["etcd-node-2.okd.dev"]=${ETCD_HOST_2_IP}
              ["etcd-node-3.okd.dev"]=${ETCD_HOST_3_IP})

echo -e "${ASCII_RED}Generating CA${ASCII_RESET}"
cd certs \
&& cfssl gencert \
   -initca \
   ../files/ca-csr.json 2>/dev/null | cfssljson -bare ca \
&& cd ..

echo -e "${ASCII_RED}Generating admin cert${ASCII_RESET}"
cd certs \
&& cfssl gencert \
   -ca=ca.pem \
   -ca-key=ca-key.pem \
   -config=../files/ca-config.json \
   -profile=kubernetes \
   ../files/admin-csr.json 2>/dev/null | cfssljson -bare admin \
&& cd ..

echo -e "${ASCII_RED}Generating etcd certs${ASCII_RESET}"
cd certs
for i in $(seq 1 3 ); do
  echo -e "${ASCII_RED}Generating etcd-node-${i} certs${ASCII_RESET}"
  ADDRESS=$(echo ${IP_ADDRESSES[etcd-node-${i}.okd.dev]})
  cfssl gencert 2>/dev/null \
  -ca=ca.pem \
  -ca-key=ca-key.pem \
  -config=../files/ca-config.json \
  -hostname=etcd-node-${i}.okd.dev,${ADDRESS} \
  -profile=kubernetes \
  ../files/etcd-node-${i}-csr.json | cfssljson -bare etcd-node-${i}
done
cd ..