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


## Mail server

A mail server built with postfix and dovecot. Support multiple domains and virtual mailboxes and aliases in a sql database. Administration via the postfix admin web interface.

Use together with the common and dbserver roles.

Provides a Apache vhost conf file as well but you need to install Apache separately.

Read more in by blog post [Run your own mail server with Postfix and Dovecot](https://xdeb.org/post/2018/02/07/run-your-own-mail-server-with-postfix-and-dovecot/).


## Mail relay och MX backup

Creates servers for Mail relay och MX backup service using Debian 9 and Postfix.

Read more in my blog post [Mail relay, MX backup and spam filtering with Postfix](https://xdeb.org/post/2017/12/20/mail-relay-mx-backup-and-spam-filtering-with-postfix/).


## DB Server (MariaDB)

Database server with local backup. MariaDB is a drop in replacement for MySQL and is run by the people who originally created MySQL, before is was bought by Sun and then swallowed up by Oracle.


## Security camera

Creates a security camera with a Raspberry Pi (Raspian), the Raspberry Pi Camera and [Motion](https://motion-project.github.io). Tested with Raspberry Pi 3 Model B and Zero W with the Raspberry Camera v2.


## UniFi Controller

Run the UniFi Controller on a Raspberry Pi (Raspian). Tested with Raspberry Pi 3 Model B and since it's a Java application that needs some RAM I would not run in on anything smaller.

Remember to open up tcp ports 8080 and 8443 as well as udp port 3478 to allow the controller to communicate with the access points.

## Wireguard (VPN)

Install and setup a Wireguard VPN server with a number of client accounts (10 by default). The account information, including a handy QR code in PNG format, is downloaded at the end.

Read more in my blog post [Using Ansible to setup a WireGuard VPN server on Debian 9](https://xdeb.org/post/2019/01/24/using-ansible-to-setup-a-wireguard-vpn-server-on-debian-9/).

