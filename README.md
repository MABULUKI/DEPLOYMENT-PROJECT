# 🌐 API DEPLOYMENT

## 📖 About the Project

This is a RESTful API developed using **Express.js with Node.js**, built to manage student details and subject data. It’s hosted on an **Ubuntu-based EC2 instance on AWS**, and enhanced with **automated Bash scripts** for maintaining system performance, backups, and updates. The project was completed as part of the **CS421: Application Deployment and Management** coursework.

---

## 📡 API Capabilities

### 💾 GET `/students`

- Returns a collection of **10+ student records**
- Each record includes:
  - Student’s name
  - Enrolled program

### 💾 GET `/subjects`

- Lists all available academic subjects
- Each record contains:
  - Subject name
  - Unique code
  - Academic year

---

## 🧰 Stack & Tools

| Component         | Technologies Involved               |
|------------------|-------------------------------------|
| Backend           | Node.js, Express                   |
| Database          | PostgreSQL                         |
| Server & Hosting  | AWS EC2 (Ubuntu), Nginx            |
| Automation        | Bash scripts, Cron scheduler, pg_dump |
| Version Control   | Git, GitHub                        |

---

## 🧱 Setup Instructions

### 🧹 Step 1: Clone the Project

```bash
git clone https://github.com/MABULUKI/DEPLOYMENT-PROJECT.git
cd DEPLOYMENT-PROJECT
```

### 📆 Step 2: Install Dependencies

```bash
npm install
```

### ▶️ Step 3: Launch Locally

```bash
node index.js
```

### 🌍 Step 4: Try the Live Endpoints

- [GET /students](http://13.61.18.76:5000/students)
- [GET /subjects](http://13.61.18.76:5000/subjects)

---

## 🛡️ Server Automation Scripts

These Bash scripts help with proactive server management:

| Script File        | Role                                                                                               |
|--------------------|----------------------------------------------------------------------------------------------------|
| `health_check.sh`  | Checks server performance and API status, writing output to `/var/log/server_health.log`.          |
| `backup_api.sh`    | Archives the application and PostgreSQL database to `/home/ubuntu/backups`, purging old backups.   |
| `update_server.sh` | Applies system updates, pulls repo changes, and restarts services. Outputs to `/var/log/update.log`.|

### 🔧 How to Execute

```bash
chmod +x script_name.sh  # Make the script executable
./script_name.sh         # Run it manually
```

---

## ⏰ Scheduled Automation (Cron Jobs)

These scripts are scheduled for automatic execution via `cron`:

```cron
# System health check every 6 hours
0 */6 * * * /home/ubuntu/health_check.sh

# Daily backup at 2 AM
0 2 * * * /home/ubuntu/backup_api.sh

# System updates every 3 days at 3 AM
0 3 */3 * * * /home/ubuntu/update_server.sh
```

---

## 📂 Backup Strategy Overview

| Method          | Summary                                                                 |
|-----------------|-------------------------------------------------------------------------|
| **Full**         | Archives all data. ✅ Reliable, ❌ More storage needed.                  |
| **Incremental**  | Saves only changes since last backup. ✅ Space-efficient, ❌ Slower restore. |
| **Differential** | Captures changes since last full backup. ⚖️ Balanced recovery time.      |

---

## 📌 System Requirements & Dependencies

Ensure the following utilities are installed on your server:

- `curl` – Used in health checks
- `pg_dump` – For PostgreSQL data backups
- `cron` – For scheduling tasks

---

> **Created by:** MABULUKI  
> **Institution:** University of Dodoma  
> **Course:** CS421 – Application Deployment and Management

