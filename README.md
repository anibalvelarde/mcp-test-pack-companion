# MCP Test Pack Companion

This repository contains a Docker Compose setup to deploy a set of services for testing and experimenting with various MCP libraries and tools, including the HighByte Intelligence Hub. It was initially created as part of an experiment to consolidate the tools required for a webinar into a convenient, single-package environment.

## Services Included

1. **MCP Inspector**
   - A service designed to inspect and handle MCP connections and activities.
   - Accessible via [localhost:3001](http://localhost:3001).

2. **HighByte Intelligence Hub**
   - A sophisticated platform for integrating, transforming, and securely sharing industrial data.
   - Accessible via multiple ports to support diverse functionalities:
     - `localhost:45245`
     - `localhost:1885`
     - `localhost:8885`
     - `localhost:45345`
   - Persistent data is stored using the `hb_vol2`.

3. **Anything LLM**
   - A versatile tool designed to interact with Large Language Models for various applications.
   - Accessible via [localhost:3002](http://localhost:3002).
   - Requires pre-existing storage in `$HOME/.anyllm`.

## Prerequisites
- Ensure Docker and Docker Compose are installed on your machine.
- Create necessary directories for volume bindings if they do not exist before running the services.

### Directory and File Setup for Anything LLM
To avoid errors during the Docker Compose setup, ensure that the necessary directories and files for Anything LLM are prepared:

For **Windows**:
- Run the PowerShell script to create the directories and files:
  ```powershell
  .\mcp-inspector-prereqs\meet_anyllm_prereqs.ps1

For **Linux**
- Run the Bash script to create the directories and files:
  ```bash
  ./mcp-inspector-prereqs/meet_anyllm_prereqs.sh
  ```

## Getting Started
1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/cp-test-pack-companion.git
   cd mcp-test-pack-companion
   ```
2. **Prepare the Environment**
    - Run the appropriate script for your operating system to ensure all prerequisites are met.
3. **Start Services**
    ```bash
        docker compose up
    ```

Follow these steps to ensure that all necessary configurations are in place before proceeding to use the Docker Compose for deploying services.