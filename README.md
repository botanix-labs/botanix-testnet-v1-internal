# botanix-testnet-v1-internal
The purpose of this repository is for devs and non devs to carry out tests on the precompiled botanix artifacts. It contains an easy rpc node setup using docker-compose.

## Prerequisites

Before you begin, ensure you have the following installed:

- `make`
- `docker`
- `docker-compose`

### Installing Dependencies

#### Linux

1. **Install `make`**:
    ```sh
    sudo apt-get update
    sudo apt-get install build-essential make
    ```

2. **Install Docker**:
    ```sh
    sudo apt-get update
    sudo apt-get install \
        ca-certificates \
        curl \
        gnupg \
        lsb-release

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    ```

3. **Install Docker Compose**:
    ```sh
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.10.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    ```

4. **Add your user to the docker group (optional)**:
    ```sh
    sudo usermod -aG docker $USER
    ```

#### macOS

1. **Install `make`**:
    ```sh
    xcode-select --install
    ```

2. **Install Docker**:
    - Download and install Docker Desktop for Mac from [Docker's official website](https://www.docker.com/products/docker-desktop).

3. **Install Docker Compose**:
    - Docker Compose is included with Docker Desktop for Mac, so no additional installation is needed.


## Getting Started

### Clone the Repository

```sh
git clone https://github.com/botanix-labs/botanix-testnet-v1-internal.git
cd botanix-testnet-v1-internal

## Start the services
make start-testnet-rpc

## Check status of rpc node
make status-testnet-rpc
```