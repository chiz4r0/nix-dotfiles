{ config, lib, pkgs, inputs, de, ... }:

{
  imports =
    [
      ./hardware-configuration.nix

      ../modules/flatpak.nix
      ../modules/font.nix
      ../modules/hardware.nix
      ../modules/networking.nix
      ../modules/package.nix
      ../modules/print.nix
      ../modules/system.nix
      ../modules/tlp.nix
      ../modules/users.nix
      ../modules/virtualisation.nix
    ]
    ++ lib.optional (de == "hyprland") ../modules/hyprland.nix
    ++ lib.optional (de == "gnome") ../modules/gnome.nix;
}
