## What is it?

A set of playbooks to deploy Ansible. With the intention of being more flexible
what I have written in past.

## How do I use it?

A basic understanding of how Ansible works is expected. Head over to https://docs.ansible.com/

This first intent of these playbooks are to leverage them with Terraform. Specifically 
the `examples/aws/ec2/099-ec2-elasticsearch`. This will automatically deploy a working ES cluster
for testing purposes.

## Limitations

Currently this is configured to work with Elasticsearch 7.9.1. Older versions to 6.X will be
added. Additionally, this is configured to only work with Ubuntu/Debian. Addition of RHEL/CentOS/
Fedora support is forthcoming. 