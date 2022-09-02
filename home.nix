{ config, pkgs, ... }:

{
  home.username = "georgian";
  home.homeDirectory = "/home/georgian";
  home.stateVersion = "22.05";

  home.packages = [
    pkgs.bat
    pkgs.unzip
  ];

  imports = [
    ./ssh.nix
    ./git.nix
    ./nvim.nix
  ];

  programs.home-manager.enable = true;
}
