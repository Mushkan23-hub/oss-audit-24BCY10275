# OSS Audit — Mushkan Bhagat | 24BCY10275

## Open Source Software Capstone Project
**Course:** Open Source Software (NGMC)  
**Chosen Software:** Git (GPL v2)  
**Student:** Mushkan Bhagat  
**Reg No:** 24BCY10275  
**GitHub:** https://github.com/Mushkan23-hub/oss-audit-24BCY10275

---

## About This Project
For this capstone project, I chose Git as my open-source software. 
Git was created by Linus Torvalds in 2005 and is licensed under GPL v2. 
This repository contains five shell scripts written and tested on Kali Linux 
that explore Git's open-source nature, Linux file system, and shell scripting concepts.

---

## Scripts Overview

| Script | What It Does |
|--------|-------------|
| script1_system_identity.sh | Shows OS, kernel version, logged-in user, uptime and licence info |
| script2_package_inspector.sh | Checks if Git is installed and shows version details |
| script3_disk_auditor.sh | Loops through system directories and shows permissions and size |
| script4_log_analyzer.sh | Reads a log file line by line and counts keyword occurrences |
| script5_manifesto_generator.sh | Asks 3 questions and saves a personal open source manifesto to a file |

---

## How to Run

### Requirements
- Kali Linux or any Ubuntu/Debian Linux system
- Git installed: `sudo apt install git -y`
- Bash shell (comes with Linux)

### Steps

**1. Clone this repository:**
```
git clone https://github.com/Mushkan23-hub/oss-audit-24BCY10275.git
cd oss-audit-24BCY10275
```

**2. Make all scripts executable:**
```
chmod +x *.sh
```

**3. Run Script 1:**
```
./script1_system_identity.sh
```

**4. Run Script 2:**
```
./script2_package_inspector.sh
```

**5. Run Script 3:**
```
./script3_disk_auditor.sh
```

**6. Run Script 4:**
```
./script4_log_analyzer.sh /var/log/auth.log error
```

**7. Run Script 5 (interactive):**
```
./script5_manifesto_generator.sh
```

---

## Dependencies
- bash — standard on all Linux systems
- git — `sudo apt install git`
- Standard tools: uname, whoami, du, ls, grep, awk, date

---

## Student Details
- **Name:** Mushkan Bhagat
- **Registration Number:** 24BCY10275
- **Course:** Open Source Software
- **Software Chosen:** Git
- **Licence:** GPL v2
