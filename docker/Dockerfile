# Use a base image with Python 3
FROM python:3.9-slim

# Set the working directory
WORKDIR /workspace

# Install system dependencies
RUN apt-get update && apt-get install -y \
    sshpass \
    git \
    curl \
    lsb-release \
    ca-certificates \
    python3-pip \
    python3-apt \
    && rm -rf /var/lib/apt/lists/*

# Install Ansible
RUN pip install --no-cache-dir ansible

# Install dependencies for Ansible
RUN apt-get update && apt-get install -y \
    openssh-client \
    && rm -rf /var/lib/apt/lists/*

# Set entrypoint
CMD ["tail", "-f", "/dev/null"]
