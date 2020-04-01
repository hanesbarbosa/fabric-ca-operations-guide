# fabric-ca-operations-guide
The Hyperledger Fabric guide that illustrates how to use Fabric CA to setup a Fabric network.

1 - Execute tearup-docker-cas.sh to create all the Docker images for the CAs:

.. code:: bash

curl -sSL https://bit.ly/2JsEEZo | bash -s

You can check the created images by issuing the command:

.. code:: bash

docker ps

2 - Execute setup-crypto.sh to create all the crypto material (wait for the CA images to be up and running):

.. code:: bash

curl -sSL https://bit.ly/2wIQ3BD | bash -s

3 - Download the configtx.yaml file to your current directory: 

.. code:: bash

curl -sSL https://bit.ly/2w4dOn9 -o ./configtx.yaml

4 - Set your environment variable FABRIC_CFG_PATH to be able to create the genesis block at /tmp/hyperledger/org0/orderer/:

.. code:: bash

curl -sSL https://bit.ly/3dLJkaG | bash -s

5 - Since the genesis block is available, now we can create the orderer image. We are also creating all the peers and cli containers tool:

.. code:: bash

curl -sSL https://bit.ly/2X2yyae | bash -s

6 - To clean up everything like docker images, volumes and directories you just execute:

.. code:: bash

curl -sSL https://bit.ly/3bIdY2H | bash -s
