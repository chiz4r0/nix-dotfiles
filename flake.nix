{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland.inputs.nixpkgs.follows = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = 
  { nixpkgs, self, ... } @inputs: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };
    lib = nixpkgs.lib;
  in
  {
    nixosConfigurations = {
      catLinux = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [ 
          ./nixos
          inputs.hyprland.nixosModules.default
        ];
        specialArgs = {
          inherit self inputs;
          de = "gnome";
        };
      };
    };
  };
}
