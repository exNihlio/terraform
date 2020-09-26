## Overview
THese playbooks handle the configuration and deployment of
OKD/K8s and etcd, based on the environment configured in the included Terraform.

## Pre-config

Ensure that ansible is installed in your system.
On Centos7 or Centos8, install the epel-release first:

`yum -y install epel-release`

Insible `ansible`

`yum -y install ansible`

The `hosts.yml` autoconfigures the /etc/ansible/hosts 
and /etc/ansible/ansible.cfg. Run it first.

`ansible-playbook hosts.yml`

## ETCD Deployment

Next, deploy etcd. And etcd RPM package can be built for Centos 7 or
Centos 8 by using the following repository: https://github.com/exNihlio/terraform

By default `install-etcd.yml` looks for an etcd RPM in the `etcd` directory. Simply
make a directory named `etcd` and copy the associated RPM. Ensure that the versions
match in `vars.yml`.

Lastly, simply run the `install-etcd.yml` file. This installs etcd and configures
it for a three node cluster. Currently this is only in insecure HTTP mode. HTTPS support
is coming with matching ansible logic to create, deploy and update X.509 PKI certs.

To verify that the playbook successfully ran and that all members have joined, simply
log into any etcd node and run the following:

`etcdctl member list`

You should see output similar to the following:

```
6e10eafd036f90ae, started, etcd-node-2.okd.dev, http://10.72.6.189:2380, http://10.72.6.189:2379, false
bb46a6ae94627222, started, etcd-node-1.okd.dev, http://10.72.5.239:2380, http://10.72.5.239:2379, false
e3f9bd702f2db39a, started, etcd-node-3.okd.dev, http://10.72.7.31:2380, http://10.72.7.31:2379, false
```
Obviously the IPs will differ.