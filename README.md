# Workstation Setup

> Set up a new machine for a software engineer working on macOS, inspired by the pivotal workstation [setup](https://github.com/pivotal/workstation-setup).

## Why use this?

1. Create a consistent environment for developing applications in java, ruby, and node.
1. Install common utilities such as git, flycut, shiftit, and docker.
1. Prettify the terminal.
1. Register useful git and bash aliases.
1. Setup easy pairing.
1. And more...

**Because this is all done with bash scripts, the setup is easily customizable for your needs.*

## Get Started

1. Make sure you are running the latest version of macOS.
1. Install the latest version of Xcode.
1. Clone and enter the repo.
    ```bash
    mkdir -p ~/workspace
    cd ~/workspace
    git clone git@github.com:bbmoz/workstation-setup.git
    cd workstation-setup
    ```
1. Run the setup script. After it has finished, you will be prompted to restart your machine.
    ```bash
    ./setup.sh
    ```
