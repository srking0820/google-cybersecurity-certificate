#!/bin/bash
echo 'Sample Bash script for cybersecurity tasks'
#!/bin/bash

# Simple Cybersecurity Toolkit Script

LOGFILE="cybersec_report_$(date +%F_%T).log"
TARGET="$1"

echo "🔍 Cybersecurity Toolkit - $(date)" | tee -a "$LOGFILE"

# 1. Nmap Port Scan
if [ -z "$TARGET" ]; then
    echo "Usage: $0 <target-ip>" | tee -a "$LOGFILE"
    exit 1
fi

echo -e "\n[1] Scanning open ports on $TARGET..." | tee -a "$LOGFILE"
nmap -Pn -T4 "$TARGET" | tee -a "$LOGFILE"

# 2. Active Network Connections
echo -e "\n[2] Listing active network connections..." | tee -a "$LOGFILE"
ss -tunap | tee -a "$LOGFILE"

# 3. Logged-in Users
echo -e "\n[3] Checking current logged-in users..." | tee -a "$LOGFILE"
who | tee -a "$LOGFILE"

# 4. World-writable files
echo -e "\n[4] Searching for world-writable files (excluding /proc)..." | tee -a "$LOGFILE"
find / -type f -perm -0002 -not -path "/proc/*" 2>/dev/null | tee -a "$LOGFILE"

echo -e "\n✅ Report saved to $LOGFILE"
