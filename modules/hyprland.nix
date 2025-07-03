{ config, pkgs, ... }:

{
  programs.hyprland.enable = true;
  # Gunakan greetd atau display manager lain jika perlu
  services.displayManager.greetd.enable = true;
  services.displayManager.defaultSession = "hyprland";
}