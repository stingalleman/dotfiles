#!/bin/sh
ssh -D 8182 -f -C -q -N vps.alleman.tech -p 2222
networksetup -setsocksfirewallproxystate "Wi-Fi" on
