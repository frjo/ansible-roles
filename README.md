# Ansible roles

Here are some Ansible roles I have built for my own use.

- Requires Ansible 2.x
- Expects Debian 9 hosts


## Common

Common configurations including things like firewall, dns and ntp. I add this role to all my playbooks, hence the name.

Wrote a bit about it in [My first 2 minutes on a server - letting Ansible do the work](https://xdeb.org/post/2016/06/23/my-first-2-minutes-on-a-server---letting-ansible-do-the-work/).


## Common Pi

Common configurations for Raspberry Pi (Raspian) including things like firewall, dns and ntp. I add this role to all my Raspberry Pi playbooks, hence the name.

It uses busybox to log only to memory and disables swap. This should make the SD card last longer.

If used with "Security camera" below please remember to add the motion streaming port to the openports_list.


## Letsencrypt

Create a Letsencrypt cert with the help of the [acme-tiny](https://github.com/diafygi/acme-tiny) script. Includes a cron script for automatic renewal.

Read more in my blog post [Let's Encrypt my servers with acme tiny](https://xdeb.org/post/2016/02/09/lets-encrypt-my-servers-with-acme-tiny/).


## Mail relay och MX backup

Creates servers for [Mail relay och MX backup](https://xdeb.net/mailrelay) service using Debian 9 and Postfix.

Read more in my blog post [Mail relay, MX backup and spam filtering with Postfix](https://xdeb.org/post/2017/12/20/mail-relay-mx-backup-and-spam-filtering-with-postfix/).


## Security camera

Creates a security camera with a Raspberry Pi (Raspian), the Raspberry Pi Camera and [Motion](https://motion-project.github.io). Tested with Raspberry Pi 3 Model B and Zero W with the Raspberry Camera v2.