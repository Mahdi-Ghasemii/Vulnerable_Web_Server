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

### 💻 **Option 2: Run Using a Virtual Machine**

#### Steps:
1. **Install VirutalBox on your system**
    - install using apt:
     ```bash
     sudo apt install virtualbox
     ```

2. **Create the Virtual Machine**:
   - Navigate to the Terraform directory:
     ```bash
     cd terraform
     ```
   - Initialize Terraform:
     ```bash
     terraform init
     ```
   - Check the terraform plan:
     ```
        terraform plan
     ``` 
   - Apply the Terraform configuration:
     ```bash
     terraform apply
     ```
     🛠️ Confirm to create the VM.

3. **Config ansible according to the virtal machine** :
    - Replace the values of ip_address and username written in the path: ansible/inventory/host_vars/server1.yml
     ```bash
        ansible_host: <your_vm_ip_address>
        ansible_user: <your_vm_username>
     ```
    - Allow password authentication in order to copy public key of our host to the machine
     ```bash
        vim /etc/ssh/sshd_config
     ```
     And in this file , you should comment this line :
    ```bash
        PasswordAuthentication no
    ```
    And then restart ssh service :
    ```bash
        sudo systemctl restart ssh
     ```
    - Run this command on your host in order to Copy the host public key:
    ```bash
        ssh-copy-id <your_vm_username>@ <your_vm_ip_address>
 