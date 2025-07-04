{ config, lib, pkgs, inputs, de, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      # ./hardware-configuration.nix
      inputs.home-manager.nixosModules.home-manager
    ];

  security.sudo.wheelNeedsPassword = false;

  users.users.tabun = {
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "audio" "video" "disk"]; # Enable ‘sudo’ for the user.
    packages = with pkgs; [
      tree
    ];
  };

  ### Home Manager
  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    users.tabun = {
      imports = 
        [ ../home ]
        ++ lib.optional (de == "hyprland") ../home/hyprland.nix
        ++ lib.optional (de == "gnome") ../home/gnome.nix;      
      home.username = "tabun";
      home.homeDirectory = "/home/tabun";
      home.stateVersion = "24.05";
      programs.home-manager.enable = true;
    };
  };
}