# 🛠️ DevOps Assignment - Secure Development Environment Setup

## 📌 Description
This repository documents the implementation of a secure, monitored, and well-maintained development environment for two developers, **Sarah** and **Mike**, under the guidance of Rahul (Senior DevOps Engineer at TechCorp).  

The setup ensures:
- Proper system monitoring
- Secure user management and access control
- Automated backup procedures for Apache and Nginx web servers

---

## 📂 Problem Statement
As a Fresher DevOps Engineer, I assisted Rahul in:
- Setting up monitoring tools for system health and performance
- Managing user accounts and enforcing password policies
- Configuring automated backups with cron jobs
- Documenting all steps with logs and verification outputs

---

## 🚀 Tasks and Implementation

### Task 1: System Monitoring Setup
**Objective:** Configure monitoring tools to track CPU, memory, disk usage, and processes.

#### Steps Performed:
1. Installed monitoring tools:
   ```bash
   sudo apt-get install htop
   sudo apt-get install nmon

   Disk usage monitoring:

bash
df -h   # Check disk space usage
du -sh /home/*   # Check per-user directory usage
Identified resource-intensive processes using htop and nmon.

Logging system metrics:

bash
htop -b -n 1 > /var/log/system_metrics.log
df -h >> /var/log/system_metrics.log
Documentation created for monitoring setup.

Task 2: User Management and Access Control
Objective: Create secure user accounts for Sarah and Mike with isolated workspaces.

Steps Performed:
Created user accounts:

bash
sudo adduser Sarah
sudo adduser Mike
Created isolated directories:

bash
mkdir /home/Sarah/workspace
mkdir /home/Mike/workspace
chown Sarah:Sarah /home/Sarah/workspace
chown Mike:Mike /home/Mike/workspace
chmod 700 /home/Sarah/workspace
chmod 700 /home/Mike/workspace
Enforced password policy:

Configured /etc/login.defs for 30-day expiration.

Enabled complexity rules via PAM (/etc/pam.d/common-password).

Task 3: Backup Configuration for Web Servers
Objective: Automate backups for Apache (Sarah) and Nginx (Mike).

Steps Performed:
Created backup directory:

bash
mkdir /backups
Configured cron jobs:

Sarah (Apache):

bash
0 0 * * 2 tar -czf /backups/apache_backup_$(date +\%F).tar.gz /etc/httpd/ /var/www/html/
Mike (Nginx):

bash
0 0 * * 2 tar -czf /backups/nginx_backup_$(date +\%F).tar.gz /etc/nginx/ /usr/share/nginx/html/
Verified backup integrity:

bash
tar -tzf /backups/apache_backup_YYYY-MM-DD.tar.gz > /var/log/apache_backup_verify.log
tar -tzf /backups/nginx_backup_YYYY-MM-DD.tar.gz > /var/log/nginx_backup_verify.log
