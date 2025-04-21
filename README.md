# DEPLOYMENT-PROJECT

## 📌 Project Overview

This project is a RESTful API built using **Node.js (Express)**, designed to handle student data and subject scores. It is deployed on an **AWS EC2 Ubuntu instance** and integrates **Bash automation scripts** to ensure server health, backup operations, and smooth API updates. This was developed for my **CS421 Application Deployment and Management** assignment.

---

## 🚀 API Features

### 🔹 Endpoint 1: `GET /students`

- Retrieves a list of **at least 10 students**.
- Each entry includes:
  - `name`
  - `program`

### 🔹 Endpoint 2: `GET /subjects`

- Retrieves available subjects.
- Each entry includes:
  - `name`
  - `code`
  - `year`

---

## 🛠️ Technologies Used

| Area              | Tools/Tech                      |
| ----------------- | ------------------------------- |
| Backend           | Node.js, Express                |
| Database          | PostgreSQL                      |
| Deployment        | AWS EC2 (Ubuntu), Nginx         |
| Monitoring/Backup | Bash scripting, Cron, `pg_dump` |
| Version Control   | Git, GitHub                     |

---

## ⚙️ Setup & Installation

### 1. Clone the Repository

```bash
git clone https://github.com/MABULUKI/DEPLOYMENT-PROJECT.git
cd DEPLOYMENT-PROJECT
```

### 2. Install API Dependencies

```bash
npm install
```

### 3. Run the API

```bash
node index.js  # For local testing
```

### 4. Access Live API Endpoints

- `/students`: [http://13.61.18.76:5000/students](http://13.61.18.76:5000/students)
- `/subjects`: [http://13.61.18.76:5000/subjects](http://13.61.18.76:5000/subjects)

---

## 📂 Bash Scripts for Server Management

The following Bash scripts are used to automate important server tasks:

| Script             | Purpose                                                                                                                                                   |
| ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `health_check.sh`  | Monitors system health and the API's status, logging results to `/var/log/server_health.log`.                                                             |
| `backup_api.sh`    | Creates backups of project files and the PostgreSQL database, stored in `/home/ubuntu/backups`. Old backups are automatically removed.                    |
| `update_server.sh` | Updates the server with the latest security patches, pulls the latest repository changes, and restarts necessary services. Logs to `/var/log/update.log`. |

### 🧪 Running the Scripts

```bash
chmod +x script_name.sh      # Grant executable permissions
./script_name.sh             # Execute the script
```

---

## ⏲️ Cron Job Configuration

To ensure these scripts run at the correct intervals, the following cron jobs are set up:

```cron
# Run health check every 6 hours
0 */6 * * * /home/ubuntu/health_check.sh

# Run backup daily at 2 AM
0 2 * * * /home/ubuntu/backup_api.sh

# Run server update every 3 days at 3 AM
0 3 */3 * * * /home/ubuntu/update_server.sh
```

---

## 🧠 Backup Strategies

The project implements the following backup types to ensure data integrity:

| Type             | Description                                                                                  |
| ---------------- | -------------------------------------------------------------------------------------------- |
| **Full**         | Backups everything. ✅ Reliable recovery, ❌ Uses more storage.                              |
| **Incremental**  | Backups only changes since the last backup. ✅ Efficient, ❌ Slower restore.                 |
| **Differential** | Backups changes since the last full backup. ⚖️ Good balance between speed and recovery time. |

---

## 🧑‍💻 Dependencies

curl (used by health_check.sh to check API endpoints)

pg_dump (used by backup_api.sh to backup the PostgreSQL database)

cron (used to schedule the scripts)

> **Author:** MABULUKI | University of Dodoma | CS421 – Application Deployment and Management
