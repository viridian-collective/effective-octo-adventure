{
  description = "Lean 4 project flake for effective-octo-adventure";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.lean4
          ];
        };

        # nix run .#build = lake build
        apps.build = flake-utils.lib.mkApp {
          drv = pkgs.writeShellApplication {
            name = "lake-build";
            runtimeInputs = [ pkgs.lean4 ];
            text = "lake build";
          };
        };

        apps.default = self.outputs.apps.${system}.build;
      }
    );
}
