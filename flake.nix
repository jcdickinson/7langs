{
  description = "Simple devshells for 7 languages in 7 weeks";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      langs = ["ruby"];

      pkgs = import nixpkgs {
        inherit system;
      };

      langInputs = inputs // {inherit pkgs;};
    in {
      formatter = pkgs.alejandra;

      devShells =
        builtins.foldl'
        (a: b: a // {${b} = import ./${b}/index.nix langInputs;})
        {}
        langs;
    });
}
