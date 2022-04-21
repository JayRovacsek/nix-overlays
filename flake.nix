{
  description = "An overlay to enable dockutils on darwin x86";

  inputs = { nixpkgs.url = "github:NixOS/nixpkgs/master"; };

  outputs = { self, nixpkgs }@inputs: { overlay = import ./overlay.nix; };
}
