# Docker Container, Networking and Port mapping Setup

This script automates the setup process for deploying two Docker containers, `devops-gateway` and `devops-authorize`. It facilitates a seamless deployment process, reducing manual configuration overhead.

## Usage
1. Open a terminal.
2. Navigate to the directory containing this script.
3. Ensure the script has execute permissions: `chmod +x create_container_network.sh`
4. Run the script using `./create_container_network.sh`.

## Description
The script initiates Docker containers for the Gateway and Authorization services, establishing communication channels between them. It maps specific ports to the host system, ensuring accessibility, and creates a dedicated Docker network for inter-container communication.

## Configuration
You can tailor the script by modifying variables such as container names, port numbers, Docker images, and the network name. This flexibility allows adaptation to various deployment environments and configurations.






