# Create genesis block
export FABRIC_CFG_PATH=$PWD
configtxgen -profile OrgsOrdererGenesis -outputBlock /tmp/hyperledger/org0/orderer/genesis.block -channelID syschannel

# Create channel transaction
export FABRIC_CFG_PATH=$PWD
configtxgen -profile OrgsChannel -outputCreateChannelTx /tmp/hyperledger/org0/orderer/mychannel.tx -channelID mychannel

