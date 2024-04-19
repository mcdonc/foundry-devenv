{ inputs, pkgs, ... }:

{
    # https://devenv.sh/packages/
    packages = [
      inputs.foundry.defaultPackage.${pkgs.system}
    ];

}
