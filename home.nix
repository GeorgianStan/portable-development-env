{ config, pkgs, ... }:

{
  home.username = "georgian";
  home.homeDirectory = "/home/georgian";
  home.stateVersion = "22.05";

  home.packages = [
    pkgs.bat
  ];

  imports = [
    ./ssh.nix
    ./git.nix
  ];

  programs.home-manager.enable = true;
}
