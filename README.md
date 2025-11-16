# 🛡️ SOC Lab Ansible Automation

## ⚠️ SECURITY NOTICE
**DO NOT COMMIT REAL IP ADDRESSES OR SENSITIVE DATA**

## Quick Setup
1. Copy the example variables file:
   \`\`\`bash
   cp inventories/group_vars/all.yml.example inventories/group_vars/all.yml
   \`\`\`
2. Edit inventories/group_vars/all.yml with your actual IP addresses

## Available Playbooks
- soc_final_dashboard.yml - Comprehensive SOC dashboard
- soc_complete_monitor.yml - Full system monitoring  
- soc_quick_monitor.yml - Quick status check
- soc_correct_architecture.yml - Architecture validation
- soc_network_flow.yml - Network diagram display

## Usage
\`\`\`bash
make status      # Quick SOC status
make health      # Detailed health check  
make network     # Show network diagram
make ping        # Test connectivity
\`\`\`

## Architecture
- SOC Core: TheHive, Cortex, MISP, SOAR
- Wazuh Manager: Security monitoring
- Splunk Server: SIEM platform
- Mail Server: Mailcow infrastructure
- Honeypot: Cowrie SSH honeypot
