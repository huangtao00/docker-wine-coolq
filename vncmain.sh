#!/usr/bin/with-contenv /bin/bash
# Set them to empty is NOT SECURE but avoid them display in random logs.
export VNC_PASSWD=''
export USER_PASSWD=''
wine ~/coolq/CQ*.exe /account $COOLQ_ACCOUNT || tail -n0 -f $0