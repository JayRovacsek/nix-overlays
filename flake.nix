{
  description = "My Overlays";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable"; };

  outputs = { self, nixpkgs }@inputs: {
    dockutil = import ./overlays/dockutil.nix;
    git = import ./overlays/git.nix;
  };
}
