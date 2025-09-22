# Library Management System - Docker Tasks

This repository demonstrates Docker fundamentals, custom image creation, container networking, and resource management using the **Library Management System** Flask app.

---

## Tasks Completed

### 1. Docker Basics & Setup
- Installed Docker Engine on a Linux VM.
- Verified Docker installation.
- Configured Docker to run as a non-root user.
- Ran the Flask app as a container.
- Stopped, restarted, and removed containers.
- Inspected running containers, viewed logs, and entered containers.
- Demonstrated volume mounting:
  - Bind mount for the repo code.
  - Named volume for persistent data.

---

### 2. Custom Docker Image (Multi-Stage & Best Practices)
- Created a multi-stage Dockerfile:
  - Builder stage to install dependencies.
  - Smaller base image in the final stage.
  - Runs as a non-root user.
  - `.dockerignore` used to exclude unnecessary files.
  - Pinned base image versions.
  - Applied caching and layer optimization.
- Built and tagged the custom image.
- Ran the image with correct port mapping.
- Pushed the image to Docker Hub.
- Demonstrated image versioning (tags v1, v2).

---

### 3. Docker Networking
- Ran Flask app container alongside a MySQL container.
- Created a custom bridge network and connected both containers.
- Demonstrated host network mode.
- Demonstrated none network mode for isolation.
- Tested connectivity between containers.

---

### 4. Security & Resource Control
- Ran container with CPU and memory limits.
- Performed a security scan on the custom image.
- Configured a container with a read-only filesystem.
- Accessed and viewed logs of the Flask app container.

---

### 5. Documentation
- Prepared short notes on:
  - Differences between image, container, volume, and network in Docker.
  - Cleaning up unused Docker resources.
  - Best practices for writing secure Dockerfiles.

---
