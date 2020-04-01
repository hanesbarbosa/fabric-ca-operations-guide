# fabric-ca-operations-guide

This is a repository for anyone trying the [Fabric CA Operations Guide](https://hyperledger-fabric-ca.readthedocs.io/en/latest/operations_guide.html) tutorial, the Hyperledger Fabric guide that illustrates how to use Fabric CA to setup a Fabric network.

The purpose here is to speedup ordinary tasks for those who already understood the steps but are trying to troubleshoot some specific points.

1 - Execute tearup-docker-cas.sh to create all the Docker images for the CAs:

```bash
curl -sSL https://bit.ly/2JsEEZo | bash -s
```

You can check the created images by issuing the command:

```bash
docker ps
```

2 - Execute setup-crypto.sh to create all the crypto material (wait for the CA images to be up and running):

```bash
curl -sSL https://bit.ly/2wIQ3BD | bash -s
```

3 - Download the configtx.yaml file to your current directory: 

```bash
curl -sSL https://bit.ly/2w4dOn9 -o ./configtx.yaml
```

4 - Set your environment variable FABRIC_CFG_PATH to be able to create the genesis block and channel transaction at /tmp/hyperledger/org0/orderer/:

```bash
curl -sSL https://bit.ly/2wMHFB8 | bash -s
```

5 - Since the genesis block is available, now we can create the orderer image. We are also creating all the peers and cli containers tool:

```bash
curl -sSL https://bit.ly/2X2yyae | bash -s
```

6 - To clean up everything like docker images, volumes and directories you just execute:

```bash
curl -sSL https://bit.ly/3bIdY2H | bash -s
```
