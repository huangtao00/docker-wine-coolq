#!/usr/bin/with-contenv /bin/bash
wine ~/coolq/CQ*.exe /account $COOLQ_ACCOUNT || tail -n0 -f $0