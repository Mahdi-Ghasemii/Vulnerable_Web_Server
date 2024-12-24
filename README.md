# Vulnerable_Web_Server
## Vulnerable Web Server Challenge Deployment
# Overview

This project sets up a simulated vulnerable web server challenge, ideal for practicing and demonstrating cybersecurity skills. It includes vulnerabilities such as Server-Side Template Injection (SSTI), Reverse Shell attacks, and Privilege Escalation via Cron Jobs.

The deployment can be done in two ways:

    # 1. Using Docker: Simplified and containerized setup.
    # 2. Using a Virtual Machine: Set up using Terraform and configured via Ansible.

Features

    Automates server setup with users, services, and file structures.
    Deploys a vulnerable environment for cybersecurity testing.
    Supports containerized or virtualized environments.

Requirements
Tools

    Docker (for containerized deployment)
    Terraform (for VM creation)
    Ansible (for VM configuration)
    Python 3 and Pip (for some dependencies in the playbook)

Deployment Options
Option 1: Run Using Docker

This approach uses a Dockerfile to set up the environment inside a container.
Steps:

    Build the Docker Image

docker build -t vulnerable-web-server .

Run the Container

docker run -d -p 7777:7777 --name vulnerable-web-server vulnerable-web-server

Access the Web Server Open your browser and navigate to:

http://localhost:7777