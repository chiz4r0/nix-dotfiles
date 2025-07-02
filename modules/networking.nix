{ config, lib, ... }:

{
  networking.hostName = "catLinux";
  networking.networkmanager.enable = true;  
}