# Workstation Setup

> Setup a new machine for a software engineer developing on a mac, inspired by the pivotal [workstation](https://github.com/pivotal/workstation-setup).

## Goals

1. Create a consistent environment for developing applications in java, ruby, and node.
1. Install common utilities such as git, flycut, shiftit, docker, and screenhero.
1. Prettify the terminal.
1. Register useful git and bash aliases.
1. Setup easy pairing.
1. Modify osx settings like fast key repeat rate and auto dock hiding.
1. Easily customize the setup through bash scripts.

## Get Started

1. Make sure you are running the latest version of macOS.
1. Install the latest version of Xcode.
1. Clone the repository.
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

## Why use this?

Compared to the pivotal workstation setup, this aims to be a cleaner, faster, and less opinionated version. Some differences are noted below:

1. Strips out superfluous app installs and script executions, like designer and cloud apps.
1. Avoids manual user input during setup.
1. Provides cleaner output and progress updates.
1. Modifies scripts to be more readable and customizable.
1. Attempts to minimize pivotal preferences, such as iterm and git pair settings.
1. Prompts for a machine restart at the end of the setup.
