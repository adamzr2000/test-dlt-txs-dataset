# Data collector container

## How to use it?

> Note: To get started, make sure Docker is installed on your system. You can find installation instructions [here](https://docs.docker.com/engine/install/).

### First you will need to build the container. 

In order to do that, run the following script:
```bash
./build.sh
```

### This will build the `dlt-txs-monitoring` docker image. 

Verify that the image is present by running:
```bash
docker image ls
```

### Docker run example
In this folder we also provide a docker run example. 

To run the data-collector container:
```bash
./run_example.sh
```

Verify that the container is up and running:
```bash
docker ps
```

In the output you should be able to see the `dlt-txs-monitoring` container up and running.

### Configuration Options

The data-collector container can be customized using the following environment variables:

- `ETH_NODE_URL`: URL of the Ethereum node (e.g., ws://localhost:8546). Needed to connect to the blockchain.
- `CONTRACT_ADDRESS`: Ethereum address of the smart contract to monitor. Used for tracking specific interactions.
- `CONTRACT_JSON`: JSON file with the smart contract ABI (e.g., Federation.json). Used for decoding smart contract function calls.
