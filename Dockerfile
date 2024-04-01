# Use the official Ubuntu 20.04 image as base
FROM ubuntu:20.04

# Update apt packages and install Python 3 and Ansible
RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        ansible \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set Python 3 as the default python
RUN ln -s /usr/bin/python3 /usr/bin/python

# Confirm Ansible installation
RUN ansible --version

# Set working directory
WORKDIR /ansible

# By default, run bash
CMD ["/bin/bash"]
