# Network Lab Configurations & Basic Linux Triage

Repository containing my baseline **Cisco IOS (CLI)** and **MikroTik RouterOS** laboratory configurations alongside a basic **Linux Bash** command checklist used for initial L1 network fault diagnosis.

### Contents:
* **`cisco_switch_baseline.ios`** – Standard L2 switch configuration template covering VLAN segmentation, Access/Trunk ports, Spanning-Tree PortFast, and Management SVI (prepared as part of my **Cisco CCNA** studies).
* **`mikrotik_router_baseline.rsc`** – Edge router baseline configuration covering L3 addressing, NAT masquerade, stateful firewall rules (`input` chain protection), and management service hardening (prepared as part of my **MikroTik MTCNA** certification).
* **`linux_net_check.sh`** – Simple read-only Linux script executing core networking commands (`ip a`, `ip route`, `ss -tuln`, `ping`) to verify local LAN connectivity.
