{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    vast2nix.url = "github:gtrunsec/vast2nix";

    nixpkgs.follows = "vast2nix/nixpkgs";
  };

  outputs = inputs @ {self, ...}:
    (
      inputs.flake-utils.lib.eachSystem [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ]
      (
        system: let
          pkgs = inputs.nixpkgs.legacyPackages.${system}.appendOverlays [];
        in {
          devShells.default = inputs.vast2nix.${system}.vast.devshells.template;
        }
      )
    )
    // {
      overlay.default = final: prev: {};
    };
}
