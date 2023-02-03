{pkgs, ...}: let
  nativeBuildInputs = with pkgs; [
    io
  ];

  packages = [
  ];
in
  pkgs.mkShell {
    inherit nativeBuildInputs packages;
  }
