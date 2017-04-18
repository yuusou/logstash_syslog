#!/bin/bash

firewall-cmd --permanent --add-port=514/tcp #syslog port
firewall-cmd --permanent --add-port=514/udp #syslog port
firewall-cmd --permanent --add-port=5140/tcp #syslog port
firewall-cmd --permanent --add-port=5140/udp #syslog port
firewall-cmd --add-forward-port=port=514:proto=udp:toport=5140 --permanent
firewall-cmd --add-forward-port=port=514:proto=tcp:toport=5140 --permanent

firewall-cmd --reload