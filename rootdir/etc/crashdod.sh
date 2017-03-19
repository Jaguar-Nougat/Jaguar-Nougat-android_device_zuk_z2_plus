#!/system/bin/sh

# Necessary at the beginning of each script!
IP6TABLES=/system/bin/ip6tables
IPTABLES=/system/bin/iptables

# Deny all internet connections on boot
$IPTABLES -P INPUT DROP
$IPTABLES -P OUTPUT DROP
$IP6TABLES -P INPUT DROP
$IP6TABLES -P OUTPUT DROP

# Deny specific IP address
$IPTABLES -A "AFWall" -d 6.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 7.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 11.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 21.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 22.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 26.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 26.147.95.111/27 -j DROP
$IPTABLES -A "AFWall" -d 26.147.95.112/27 -j DROP
$IPTABLES -A "AFWall" -d 28.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 29.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 30.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 33.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 55.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 137.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 140.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 144.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 146.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 147.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 150.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 152.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 153.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 155.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 156.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 157.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 158.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 167.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 169.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 204.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 207.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 214.0.0.0/8 -j DROP
$IPTABLES -A "AFWall" -d 215.0.0.0/8 -j DROP

settings put global captive_portal_server 127.0.0.1
settings put global captive_portal_detection_enabled 0
settings put global ntp_server 127.0.0.1

