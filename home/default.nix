{ config, pkgs, ... }:

{
  imports = [
    ./modules/alacritty
    ./modules/direnv
    ./modules/git
    ./modules/zsh
    ./packages.nix
  ];
}
