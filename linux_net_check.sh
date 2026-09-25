#!/bin/bash
# Simple Linux Network & System Triage Script (Read-Only)

echo "=== 1. HOSTNAME & UPTIME ==="
hostname
uptime

echo "=== 2. IP ADDRESSES (Layer 2 / Layer 3) ==="
ip -brief address show

echo "=== 3. ROUTING TABLE (Default Gateway) ==="
ip route show

echo "=== 4. OPEN LISTENING PORTS ==="
ss -tuln

echo "=== 5. CONNECTIVITY TEST (Ping Public DNS) ==="
ping -c 3 8.8.8.8
