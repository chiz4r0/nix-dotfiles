{ config, pkgs, ... }:

{
  home.packages =  with pkgs;[
    android-studio
    gnomeExtensions.blur-my-shell 
    jetbrains.datagrip
    jetbrains.pycharm-professional
    jetbrains.webstorm
    libreoffice-fresh
    obsidian
    remmina
    telegram-desktop
    vscode
    zotero
  ];
}
