{ config, lib, pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  programs.firefox.enable = true;
  programs.zsh.enable = true;
  environment.systemPackages = with pkgs; [
    brave
    vim 
    wget
    wireguard-tools
  ];
}