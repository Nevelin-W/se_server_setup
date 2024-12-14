# Use a base image with Python 3
FROM python:3.9-slim

# Set the working directory
WORKDIR /workspace

# Install system dependencies and clean up afterward to reduce image size
RUN apt-get update && apt-get install -y \
    sshpass \
    git \
    curl \
    lsb-release \
    ca-certificates \
    python3-pip \
    python3-apt \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install --no-cache-dir ansible

# Set up a directory for ansible playbooks and configuration
RUN mkdir -p /workspace/ansible
