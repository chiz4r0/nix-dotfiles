{ config, lib, ... }:

{
  networking.hostName = "catLinux";
  networking.networkmanager.enable = true;  
  networking.wireguard.enable = true;

}