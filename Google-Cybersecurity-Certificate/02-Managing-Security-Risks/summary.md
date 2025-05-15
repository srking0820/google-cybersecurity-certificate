## Course 2: Managing Security Risks
- Security controls and frameworks
Security controls: Safeguards designed to reduce specific security risks

Security ethics: Guidelines for making appropriate decisions as a security professional

Security frameworks: Guidelines used for building plans to help mitigate risk and threats to data and privacy

Security governance: Practices that help support, define, and direct the security efforts of an organization

Sensitive personally identifiable information (SPII): A specific type of PII that falls under stricter handling guidelines

Example of a control document:
[Controls assessment.docx](https://github.com/user-attachments/files/20218758/Controls.assessment.docx)
  
- Risk management process
Security posture refers to an organization's ability to manage its defense of critical assets and data and react to change.

1. Security and risk management
   
   a. Defining security goals and objectives - organizations can reduce risks to critical assets and data like PII, or personally identifiable information.
   b. Risk mitigation - The process of having the right procedures and rules in place to quickly reduce the impact of a risk like a    breach
   c. Compliance - the primary method used to develop an organization's internal security policies, regulatory requirements, and independent standards.
   d. Business continuity - relates to an organization's ability to maintain its everyday productivity by establishing risk disaster recovery plans.
   e. Legal regulations related to security and risk management are different worldwide, but the overall goals are similar. As a security professional, this means following rules and expectations for ethical behavior to minimize negligence, abuse, or fraud.

2. Asset security - focuses on securing digital and physical assets. It also relates to the storage, maintenance, retention, and destruction of data. This means that assets such as PII or SPII should be securely handled and protected, whether stored on a computer, transferred over a network like the internet, or even physically collected. Organizations also need to have policies and procedures that ensure data is properly stored, maintained, retained, and destroyed. Knowing what data you have and who has access to it is necessary for having a strong security posture that mitigates risk to critical assets and data.

* For example, an organization might have you, as a security analyst, oversee the destruction of hard drives to make sure that they're properly disposed of. This ensures that private data stored on those drives can't be accessed by threat actors.

3. Security architecture and engineering - focuses on optimizing data security by ensuring effective tools, systems, and processes are in place to protect an organization's assets and data. One of the core concepts of secure design architecture is shared responsibility. Shared responsibility means that all individuals within an organization take an active role in lowering risk and maintaining both physical and virtual security. By having policies that encourage users to recognize and report security concerns, many issues can be handled quickly and effectively.

4. Communication and network security - focuses on managing and securing physical networks and wireless communications. Secure networks keep an organization's data and communications safe whether on-site, or in the cloud, or when connecting to services remotely.

* For example, employees working remotely in public spaces need to be protected from vulnerabilities that can occur when they use insecure Bluetooth connections or public wifi hotspots. By having security team members remove access to those types of communication channels at the organizational level, employees may be discouraged from practicing insecure behavior that could be exploited by threat actors.

[Risk register.docx](https://github.com/user-attachments/files/20218838/Risk.register.docx)

- 
- Linux fundamentals and file permissions
- 
[Uploading Linux_Fundamentals_and_F# 📁 Linux Fundamentals & File Permissions

## 📌 Overview
This guide covers the essential Linux commands and concepts, focusing on **filesystem navigation**, **file manipulation**, and **understanding file permissions** — a critical aspect for any system administrator, developer, or cybersecurity analyst.

---

## 📂 Table of Contents
1. [Basic Linux Commands](#1-basic-linux-commands)
2. [Filesystem Structure](#2-filesystem-structure)
3. [User and Group Concepts](#3-user-and-group-concepts)
4. [Understanding File Permissions](#4-understanding-file-permissions)
5. [Changing Permissions: `chmod`](#5-changing-permissions-chmod)
6. [Changing Ownership: `chown` and `chgrp`](#6-changing-ownership-chown-and-chgrp)
7. [Practical Examples](#7-practical-examples)

---

## 1. 🔧 Basic Linux Commands

```bash
pwd             # Show current directory
ls              # List directory contents
ls -la          # Detailed list with hidden files
cd /path/to/dir # Change directory
mkdir new_dir   # Create new directory
touch file.txt  # Create empty file
cp a.txt b.txt  # Copy files
mv a.txt b.txt  # Rename/move file
rm file.txt     # Delete file
```

---

## 2. 🗂 Filesystem Structure

| Directory | Purpose |
|----------|---------|
| `/`      | Root directory (everything starts here) |
| `/home`  | User directories |
| `/etc`   | Configuration files |
| `/var`   | Variable data (logs, spool files) |
| `/bin`   | Essential binaries |
| `/usr`   | User programs and data |
| `/tmp`   | Temporary files |

---

## 3. 👥 Users and Groups

Each file has:
- **Owner**: The user who created it
- **Group**: A group that the file belongs to
- **Others**: Everyone else

Check user info:
```bash
whoami      # Current user
id          # User ID, group ID, and groups
groups      # Groups the user belongs to
```

---

## 4. 🔐 Understanding File Permissions

Run `ls -l` to see:
```bash
-rwxr-xr--  1 user group 1234 May 14  file.sh
```

Format: `[file type][owner][group][others]`

| Symbol | Meaning |
|--------|---------|
| `-`    | File |
| `d`    | Directory |
| `r`    | Read |
| `w`    | Write |
| `x`    | Execute |

**Permissions:**
- Owner: `rwx`
- Group: `r-x`
- Others: `r--`

---

## 5. 🧰 Changing Permissions: `chmod`

### Symbolic Mode

```bash
chmod u+x file.sh   # Add execute to user
chmod g-w file.txt  # Remove write from group
chmod o=r file.txt  # Set read-only for others
```

### Numeric (Octal) Mode

| rwx | Binary | Octal |
|-----|--------|-------|
| rwx | 111    | 7     |
| r-x | 101    | 5     |
| r-- | 100    | 4     |

Example:
```bash
chmod 755 script.sh  # rwxr-xr-x
chmod 644 file.txt   # rw-r--r--
```

---

## 6. 🧑‍🤝‍🧑 Changing Ownership: `chown` and `chgrp`

```bash
chown newuser file.txt           # Change file owner
chown newuser:newgroup file.txt  # Change owner and group
chgrp newgroup file.txt          # Change group only
```

You must be **root** or use `sudo` to change ownership.

---

## 7. ✅ Practical Examples

### Make a script executable:
```bash
chmod +x myscript.sh
```

### Restrict access to a private file:
```bash
chmod 600 secrets.txt   # Only owner can read/write
```

### Create a shared directory:
```bash
mkdir /shared
chmod 775 /shared       # Owner and group can write
chown user:sharedgroup /shared
```

---

## 🚀 Pro Tip: Default Permissions (umask)

To see the default permission mask:
```bash
umask
```

To set a new umask (e.g., 027 to block group write and all others):
```bash
umask 027
```

---

## 📚 References
- `man chmod`
- `man chown`
- [Linux File Permission Guide - TLDP](https://tldp.org/LDP/GNU-Linux-Tools-Summary/html/x11655.htm)
ile_Permissions.md…]()
