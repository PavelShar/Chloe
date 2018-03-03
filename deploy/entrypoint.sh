#!/bin/ash


# Apply environment
# Set SSH password
echo root:${SSH_PASSWORD:-password} | chpasswd


# Run ssh server
/usr/sbin/sshd
