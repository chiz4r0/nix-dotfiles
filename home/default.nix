{ config, pkgs, ... }:

{
  imports = [
    ./modules/direnv
    ./modules/git
    ./modules/zsh
    ./packages.nix
  ];
}
