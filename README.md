# codelabs-tezos

# Contributing to the repo

We've put together the following guidelines to help you figure out where you can best be helpful.

## Table of Contents

0. [Types of contributions we're looking for](#types-of-contributions-were-looking-for)
0. [Ground rules & expectations](#ground-rules--expectations)
0. [How to contribute](#how-to-contribute)
0. [Style guide](#style-guide)
0. [Setting up your environment](#setting-up-your-environment)

## Types of contributions we're looking for
There are many ways you can directly contribute to the guides (in descending order of need):

* Implement a feature
* Suggest additional features
* Bugfixes

Interested in making a contribution? Read on!

## Ground rules & expectations

Before we get started, here are a few things we expect from you (and that you should expect from others):

* Be kind and thoughtful in your conversations around this project. We all come from different backgrounds and projects, which means we likely have different perspectives on "how version control is done." Try to listen to others rather than convince them that your way is correct.
* Abide by the CodeDay Code of Conduct (primarily, be friendly and respectful).
* If you open a pull request, please ensure that your contribution passes all tests. If there are test failures, you will need to address them before we can merge your contribution.
* When adding content, please consider if it is widely valuable.

## How to contribute

If you'd like to contribute, start by searching through the [issues](https://github.com/github/opensource.guide/issues) and [pull requests](https://github.com/github/opensource.guide/pulls) to see whether someone else has raised a similar idea or question.

If you don't see your idea listed, and you think it fits into the goals of this guide, do one of the following:
* **If your contribution is minor,** such as a typo fix, open a pull request.
* **If your contribution is major,** such as a new guide, start by opening an issue first. That way, other people can weigh in on the discussion before you do any work.

## Style guide
If you're writing content, see the [style guide](./docs/styleguide.md) to help your prose match the rest of the Guides.

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
  
    
   
