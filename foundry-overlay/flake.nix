{
  inputs = {
    foundry.url = "github:shazow/foundry.nix/monthly";
  };

  outputs = { self, foundry, ... }: {
    overlays.default = self: super: {
      foundry-bin = foundry.defaultPackage.${self.system};
    };
  };
}
