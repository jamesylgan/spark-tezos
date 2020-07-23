# codelabs-tezos

## Table of Contents

1. [Description](#description)

## Description
A smart contract system on top of the existing Tezos blockchain. [To be added]

## Setting up your environment

**Setting up with a Linux OS**


 Step 1: Set up a Tezos node
 
 Open up your terminal. In order to update your system type the command: 
    
    $ sudo apt-get update
  
 The following command will install libraries:
 
    $ sudo apt install -y rsync git m4 build-essential patch unzip bubblewrap wget

  Now you need to download the opam compiler by entering the command:
    
    $ https://github.com/ocaml/opam/releases/download/2.0.5/opam-2.0.5-x86_64-linux

  You must copy the opam compiler into the bin folder so enter the command:
  
    $ sudo cp opam-2.0.5-x86_64-linux /usr/local/bin/opam
  
  Now that we've succesfully installed docker, we can now focus on starting a tezos node 
  by running the command:
  
    $ docker run --rm -it tezos/tezos:mainnet tezos-node
  
  We must give ourselves permsiion to use the compiler, so enter:
  
    $ sudo chmod a+x /usr/local/bin/opam
  
  It's time to fetch the tezos folder from gitlab:
  
    $ git clone https://gitlab.com/Tezos/Tezos.git
    
  Change your directory to the Tezos folder:
   
    $ cd Tezos
    
    $ opam init --bare
    
  The client will now prompt you to answer 2 questions, simply enter 'n' for both. 
  
    $ make build-deps
    
  Ignore the warning 'No repository Tezos found', and continue. 
  
    $ eval $(opam env)
    
    $ make
    
    $ export PATH=~/Tezos:$PATH
    
    $ source ./src/bin_client/bash-completion.sh
    
    $ export TEZOS_CLIENT_UNSAFE_DISABLE_DISCLAIMER=Y
  
    
