#!/bin/sh

# If no ssh server then restart it.
if [ `systemctl is-active ssh` != "active" ]; then
  systemctl restart ssh
fi
