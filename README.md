# Developer Environment with `foundry.nix` with `devenv.sh`

This repository creates an overlay in a devenv.nix:

- [foundry.nix](https://github.com/shazow/foundry.nix): Provides the Foundry suite of tools (`forge`, `cast`, `anvil`, and `chisel`).
- [devenv.sh](https://github.com/cachix/devenv): Allows for fast and reproducible developer environment setups.

## Quick Start

1. **Activate Environment**:
    ```bash
    devenv shell
    ```
   This starts a shell session with all tools from Foundry available.

2. **Using Foundry Tools**: Once inside the environment, tools like `forge` and `cast` are directly available.

> 🚀 Dive deeper by visiting the official repos: [foundry.nix](https://github.com/shazow/foundry.nix) and [devenv.sh](https://github.com/cachix/devenv).
