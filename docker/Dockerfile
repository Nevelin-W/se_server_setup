# Use a lightweight Linux base image
FROM debian:bullseye-slim

# Set the working directory
WORKDIR /workspace

# Install system dependencies and clean up afterward to reduce image size
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    sshpass \
    git \
    curl \
    lsb-release \
    ca-certificates \
    python3-apt \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip3 install --no-cache-dir ansible

# Set up a directory for Ansible playbooks and configuration
RUN mkdir -p /workspace/ansible
