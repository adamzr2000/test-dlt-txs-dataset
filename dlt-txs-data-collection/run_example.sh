#!/bin/bash

eth_node_url="ws://10.5.30.10:3334"
contract_address="0x8a899B9fF6293789A9Ed8716e08e5fCA83e975af"
contract_json="Federation.json"

echo "ETH_NODE_URL: $eth_node_url"
echo "CONTRACT_ADDRESS: $contract_address"
echo "CONTRACT_JSON: $contract_json"

echo 'Running dlt-txs-monitoring image.'

docker run \
    -d \
    --name dlt-txs-monitoring \
    --rm \
    --net host \
    -e ETH_NODE_URL="$eth_node_url" \
    -e CONTRACT_ADDRESS="$contract_address" \
    -e CONTRACT_JSON="$contract_json" \
    -v "$(pwd)/data":/app/data \
    -v "$(pwd)/smart-contracts":/app/smart-contracts \
    dlt-txs-monitoring:latest
