# Spark: A Deflationary Token on the Tezos Blockchain

## Table of Contents
1. [Description](#description)
1. [Environment Setup](#environment-setup)

## Description
With Spark Token, we will observe the effects of deflationary tokens on long term price stability. We followed the Bomb Token’s model of burning a percentage of transacted amounts, steadily and gradually decreasing the total token supply to achieve our token’s deflationary nature. Deployed on the Tezos platform with an initial supply of one million tokens, Spark will burn 2% of transactions. No new coins will be minted. This project is still in very early development phase. The token is yet to be released to the public.

**Whitepaper**: [Link](src/whitepaper.pdf)

**Reddit**: [Link](https://www.reddit.com/user/SparkToken)

**Contract**: Not deployed on the mainnet yet.

## Environment Setup

**On Linux**

1. Update system:
```
$ sudo apt-get update
```
1. Install libraries:
```
$ sudo apt install -y rsync git m4 build-essential patch unzip bubblewrap wget
```
1. Download opam compiler:
```
$ https://github.com/ocaml/opam/releases/download/2.0.5/opam-2.0.5-x86_64-linux
```
1. Copy opam compiler into bin:
```
$ sudo cp opam-2.0.5-x86_64-linux /usr/local/bin/opam
```
1. Run tezos node:
```
$ docker run --rm -it tezos/tezos:mainnet tezos-node
```
1. Give permission to use the compiler:
```
$ sudo chmod a+x /usr/local/bin/opam
```
1. Fetch Gitlab Tezos Folder:
```
$ git clone https://gitlab.com/Tezos/Tezos.git
```
1. Change your directory to the Tezos folder:
```
$ cd Tezos
$ opam init --bare
```
1. The client will now prompt you to answer 2 questions, simply enter 'n' for both:
```
$ make build-deps
```
1. Ignore the warning 'No repository Tezos found' and continue:
```
$ eval $(opam env)
$ make
$ export PATH=~/Tezos:$PATH
$ source ./src/bin_client/bash-completion.sh
$ export TEZOS_CLIENT_UNSAFE_DISABLE_DISCLAIMER=Y
```

**Using Docker Images**

Please refer to this [guide](https://tezos.gitlab.io/introduction/howtoget.html#build-from-sources), but to summarize the key points:

1. You will need a working installation of [Docker](https://www.docker.com/) and docker-compose on a machine with architecture **x86_64**. If you wish to install via terminal, refer to this [guide](https://gist.github.com/rstacruz/297fc799f094f55d062b982f7dac9e41) on installing docker via terminal on various operating systems.

2. In your terminal, run the following commands:
```
$ wget -O carthagenet.sh https://gitlab.com/tezos/tezos/raw/latest-release/scripts/tezos-docker-manager.sh
$ chmod +x carthagenet.sh
$ ./carthagenet.sh start
```
This should download the carthage testnet on your machine. Locate it on your computer and place it in a directory of your choice. Note that test networks are updated regularly, so please ensure that you are getting the latest test network in the future instead of carthagenet. Alphanet and babylonnet were the test networks before carthagenet, and carthagenet will be replaced like those old networks later in time.

3. You should be  able to run your Tezos node and Michelson scripts on carthagenet now.
