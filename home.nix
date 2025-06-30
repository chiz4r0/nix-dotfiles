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
    telegram-desktop
    zotero
  ];

  programs.git = {
    enable = true;
    userEmail = "yurandarezky@gmail.com";
    userName = "chiz4r0";
  };

  programs.direnv = {
      enable = true;
      nix-direnv.enable = true;
  };

  dconf = {
    enable = true;
    settings = {
      "org/gnome/desktop/background" = {
        color-shading-type = "solid";
        picture-uri = "file:///data/Pictures/bg.jpg";
      };

      "org/gnome/mutter" = {
        experimental-features = [
          "scale-monitor-framebuffer"
          "xwayland-native-scaling"
        ];
      };

      "org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = with pkgs.gnomeExtensions; [
          blur-my-shell.extensionUuid
        ];
      };


    };
  };

}
