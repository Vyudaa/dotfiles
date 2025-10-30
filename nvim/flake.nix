# flake.nix
{
  description = "A Lua development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux"; # Or your desired system
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
          lua
          lua-language-server
          stylua
          nil
          nixfmt
        ];
        # Define environment variables or other shell configurations
      };
    };
}
