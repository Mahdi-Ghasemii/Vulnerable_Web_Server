# 🛡️ Vulnerable Web Server Challenge Deployment

---

Welcome to the **Vulnerable Web Server Challenge**! This project sets up a simulated environment to practice cybersecurity techniques. It showcases real-world vulnerabilities like **Server-Side Template Injection (SSTI)**, **Reverse Shell attacks**, and **Privilege Escalation via Cron Jobs**.

---

## ✨ Features

- **Two Deployment Options**: Dockerized setup or Virtual Machine configuration using Terraform and Ansible.
- **Automated Setup**: Simplified deployment with Ansible playbooks and Terraform.
- **Realistic Vulnerabilities**: Hands-on practice with security exploits.
- **Custom Challenges**: Simulates various attack scenarios for training.

---

## 🚀 Deployment Options

### 🐳 **Option 1: Run Using Docker**

#### Steps:
1. **Build the Docker Image**:
   ```bash
   docker build -t vulnerable-web-server .
   ```
   ✅ Creates the containerized environment.

2. **Run the Container**:
   ```bash
   docker run -d -p 7777:7777 --name vulnerable-web-server vulnerable-web-server
   ```
   ✅ Exposes the web server on port `7777`.

3. **Access the Web Server**:
   Open your browser and navigate to:
   ```
   http://localhost:7777
   ```
   🌐 Voilà! The server is ready for testing.

---