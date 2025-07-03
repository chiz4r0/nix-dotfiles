{ config, pkgs, ... }:

{
  imports = [
    ./modules/alacritty
    ./modules/direnv
    ./modules/git
    ./modules/nvim
    ./modules/zsh
    ./packages.nix
  ];
}
