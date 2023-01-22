{pkgs, ...}: let
  nativeBuildInputs = with pkgs; [
    ruby_3_1
  ];

  packages = with pkgs; [
    rubyPackages_3_1.solargraph
  ];
in
  pkgs.mkShell {
    inherit nativeBuildInputs packages;
  }
