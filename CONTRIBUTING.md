# Contributing to the Repository

We've put together the following guidelines to help you figure out where you can best be helpful.

## Table of Contents

1. [Desired Contributions](#desired-contributions)
2. [How to Contribute](#how-to-contribute)
3. [How to Setup Tezos](#how-to-setup-tezos)

## Desired Contributions

There are many ways you can directly contribute to the guides (in descending order of need):

* Implement a feature
* Suggest additional features
* Bugfixes

Interested in making a contribution? Read on!

## How to Contribute

If you'd like to contribute, start by searching through the [issues](https://github.com/jamesylgan/codelabs-tezos/issues) and [pull requests](https://github.com/jamesylgan/codelabs-tezos/pulls) to see whether someone else has raised a similar idea or question.

If you don't see your idea listed, and you think it fits into the goals of this guide, do one of the following:
* **If your contribution is minor,** such as a typo fix, open a pull request.
* **If your contribution is major,** such as a new guide or a feature, start by opening an issue first. That way, other people can weigh in on the discussion before you do any work.

Any pull requests should be made to the **develop** branch. Once the develop version is fully ready, it will be added to release and merged to **main** or master branch upon the agreement of the majority of contributors. We may also pass some unit tests or formal verification.

## How to Setup Tezos

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
