This project designed to set up a vulnerable web server challenge for cybersecurity practice and training. The server simulates vulnerabilities like **Server-Side Template Injection (SSTI)**, **Reverse Shell attacks**, and **Privilege Escalation via Cron Jobs**.

## Features

- **Two Deployment Methods**: Dockerized setup or Virtual Machine configuration using Terraform and Ansible.
- **Realistic Vulnerabilities**: Includes simulated exploits for hands-on practice.
- **Automated Setup**: Streamlined with Ansible playbooks and Terraform for easy deployment.

---

## Deployment Options

### :whale: **Option 1: Run Using Docker**

#### Steps:
1. **Build the Docker Image**:
   ```bash
   docker build -t vulnerable-web-server .
   ```

2. **Run the Container**:
   ```bash
   docker run -d -p 7777:7777 --name vulnerable-web-server vulnerable-web-server
   ```

3. **Access the Web Server**:
   Open your browser and navigate to:
   ```
   http://localhost:7777
   ```
