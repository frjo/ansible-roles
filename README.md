# Ansible roles

Here are some Ansible roles I have built for my own use.

- Requires Ansible 2.x
- Expects Debian 8 hosts


## Common

Common configurations including things like firewall, dns and ntp. I add this role to all my playbooks, hence the name. Wrote a bit about it in [My first 2 minutes on a server - letting Ansible do the work](https://xdeb.org/node/1615)


## Letsencrypt

Create a Letsencrypt cert with the help of the [acme-tiny](https://github.com/diafygi/acme-tiny) script. Includes a cron script for automatic renewal. Read more on my blog post [Let's Encrypt my servers with acme tiny](https://xdeb.org/node/1614).


## Mail relay och MX backup

Creates servers for [Mail relay och MX backup](https://xdeb.net/mailrelay) service using Debian 8 and Postfix. 
