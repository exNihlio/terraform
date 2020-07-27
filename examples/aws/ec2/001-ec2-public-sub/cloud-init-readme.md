## The basics of cloud-init

`cloud-init` is a Python based utility from Canonical that enables virtual machines
in a cloud (public or private) to be configured from stateless images. Essentially, 
a bare 'cloud image' is deployed, reads in instructions from a cloud-init file and the
the instances configures itself based on these instructions. 

Configurations can be anything from adding users and SSH keys to full blown software
deployments.

## How does it work

At boot time the cloud-init service reads in the base64 encoded yaml file from the EC2 meta-data
service. It then executes these instructions.

## Why use it?

By default, cloud-images cannot be logged into. The root account is locked out and there are no
users. Technically ec2 instances are created with an ec2-user account and you can provision these
with a public/private key-pair. However, this is an extremely minimal config and lacks flexibility.

cloud-init will allow you to install additional users, execute arbitrary commands, enroll in an LDAP/
directory service or install packages.
