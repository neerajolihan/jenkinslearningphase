# Base image
FROM ubuntu:20.04

# Prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install Python & Ansible
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        python3 \
        python3-pip \
        ansible \
    && rm -rf /var/lib/apt/lists/*

# Symlink python → python3
RUN ln -s /usr/bin/python3 /usr/bin/python

# Working directory
WORKDIR /ansible

# Default command
CMD ["/bin/bash"]
