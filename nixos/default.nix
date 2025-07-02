{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ../modules/desktop.nix
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
    ];
}