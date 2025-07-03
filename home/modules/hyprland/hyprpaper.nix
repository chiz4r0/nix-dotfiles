{ config, lib, pkgs, ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
      preload = [
        "/data/Pictures/bg.jpg"
      ];
      wallpaper = [
        "eDP-1,/data/Pictures/bg.jpg"
        ",/data/Pictures/bg.jpg"
      ];
    };
  };
}