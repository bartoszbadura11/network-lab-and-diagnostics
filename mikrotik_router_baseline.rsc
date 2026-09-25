# ==========================================================
# MikroTik RouterOS Baseline Configuration (MTCNA Lab)
# Author: Bartosz Badura (MTCNA / ICT Technician)
# ==========================================================

# 1. System Identity
/system identity
set name=KAT-RTR-EDGE-01

# 2. IP Addressing (WAN & LAN Gateway)
/ip address
add address=192.168.10.1/24 interface=bridge-lan comment="LAN Default Gateway"

# 3. DNS Configuration
/ip dns
set servers=8.8.8.8,1.1.1.1 allow-remote-requests=yes

# 4. NAT (Masquerade for outbound LAN traffic)
/ip firewall nat
add chain=srcnat out-interface=ether1-wan action=masquerade comment="WAN Outbound NAT"

# 5. Stateful Firewall Filter (Basic Security Baseline)
/ip firewall filter
add chain=input connection-state=established,related action=accept comment="Allow Established/Related"
add chain=input connection-state=invalid action=drop comment="Drop Invalid Packets"
add chain=input in-interface=ether1-wan action=drop comment="Drop Unsolicited Traffic from WAN"

# 6. Management Hardening (Disable insecure protocols)
/ip service
disable telnet,ftp,www
set ssh address=192.168.10.0/24
set winbox address=192.168.10.0/24
