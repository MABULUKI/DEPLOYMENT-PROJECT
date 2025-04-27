# Deployment Project - Express.js API with PostgreSQL

## 📋 Project Description

This project is a simple REST API built using:
- Node.js + Express.js
- PostgreSQL (database)
- Docker + Docker Compose
- Deployed to AWS EC2

The API manages:
- Students
- Subjects

---

## 🚀 Features

- Get list of students
- Get list of subjects
- Connects to PostgreSQL inside Docker
- Fully containerized using Docker Compose
- Live deployed on AWS EC2 server

---

## ⚙️ How to Build and Run Locally

1. Clone the repository:
   ~bash
   git clone https://github.com/MABULUKI/DEPLOYMENT-PROJECT.git
   cd DEPLOYMENT-PROJECT

2. Run Docker Compose:
  ~bash
   docker-compose up --build

   🌍 Deployed API URL
Students endpoint:
[http://13.61.18.76:5001/students]

Subjects endpoint:
[http://13.61.18.76:5001/subjects]

🐳 Docker Hub Image
View Docker Image on Docker Hub:
[https://hub.docker.com/r/your-dockerhub-username/deployment-project-api]


📂 Assignment Required Files
File	Status
docker_logs.txt	✅ Uploaded
docker_ps.png	✅ Uploaded


🛠 Troubleshooting Tips
Ensure .env variables are set correctly.
If PostgreSQL service restarts, check POSTGRES_PASSWORD.
If ports are busy, edit .env and docker-compose.yml.
Use docker-compose down -v to reset containers and volumes if needed.

✨ Credits
Author: MABULUKI
Course: CS 421 - Deployment Project
