#!/bin/bash

# eth_node_url="ws://10.5.99.1:3334"
# contract_address="0x8a899B9fF6293789A9Ed8716e08e5fCA83e975af"
# contract_json="Federation.json"

#eth_node_url="ws://10.0.1.1:3334"
#contract_address="0xac80429aCEc277EfcF121B8c3797c2ca7F0200e9"
#contract_json="MasKeyExchange.json"

eth_node_url="ws://172.18.0.5:3334"
contract_address="0x19e42d35Ae32187929ffdC8aCe2CAC5D5a75b275"
contract_json="ra2.json"

echo "ETH_NODE_URL: $eth_node_url"
echo "CONTRACT_ADDRESS: $contract_address"
echo "CONTRACT_JSON: $contract_json"

echo 'Running dlt-txs-monitoring image.'

docker run \
    -it \
    --name dlt-txs-monitoring \
    --rm \
    --net host \
    -e ETH_NODE_URL="$eth_node_url" \
    -e CONTRACT_ADDRESS="$contract_address" \
    -e CONTRACT_JSON="$contract_json" \
    -v "$(pwd)/data":/app/data \
    -v "$(pwd)/smart-contracts":/app/smart-contracts \
    dlt-txs-monitoring:latest
