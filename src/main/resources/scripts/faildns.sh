#!/bin/bash
# Script for FailDns Chaos Monkey

# Block all traffic on port 53
iptables -A OUTPUT -p tcp -m tcp --dport 53 -j DROP
iptables -A OUTPUT -p udp -m udp --dport 53 -j DROP
