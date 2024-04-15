{ inputs, pkgs, ... }:

let
  pkgs-stable = import inputs.nixpkgs-stable { system = pkgs.system; };
  # pkgs-subflake = import inputs.subflake { system = pkgs.system; }; # Import the subflake
  # pkgs-subflake = import nixpkgs {
  #   system = pkgs.system;
  #   overlays = [ inputs.subflake.overlay ];
  # };
  # pkgs-subflake = import inputs.subflake { system = pkgs.system; }; 
in {
    # https://devenv.sh/basics/
    env.GREET = "This is a foundry dev environment";


    # https://devenv.sh/packages/
    packages = [
      pkgs.foundry-bin
      pkgs.git
      pkgs.jq
      pkgs.zip
      pkgs.unzip
      pkgs-stable.nodejs_18
      pkgs-stable.nodePackages.typescript
    ];

    difftastic.enable = true;

    enterShell = ''
      echo -e "\\033[1;34m*********************************************************\\033[0m"
      echo -e "\\033[1;34m*                                                       *\\033[0m"
      echo -e "\\033[1;34m*    \\033[1;32mWelcome to the Nix dev environment for foundry! \\033[1;34m   *\\033[0m"
      echo -e "\\033[1;34m*                                                       *\\033[0m"
      echo -e "\\033[1;34m*    For more information, please visit:                *\\033[0m"
      echo -e "\\033[1;36m*    https://github.com/shazow/foundry.nix              *\\033[0m"
      echo -e "\\033[1;36m*    https://github.com/cachix/devenv                   *\\033[0m"
      echo -e "\\033[1;34 m*                                                       *\\033[0m"
      echo -e "\\033[1;34m*********************************************************\\033[0m"

    '';

    # https://devenv.sh/languages/
    # languages.nix.enable = true;
    # languages.typescript.enable = true;

    # https://devenv.sh/scripts/
    # scripts.hello.exec = /tdp/scripts/script.sh;

    # https://devenv.sh/pre-commit-hooks/
    # pre-commit.hooks.shellcheck.enable = true;

    # https://devenv.sh/processes/
    # processes.ping.exec = "ping example.com";
}
