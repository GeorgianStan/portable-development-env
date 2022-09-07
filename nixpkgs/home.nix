{ config, pkgs, ... }:

{
  home.username = "georgian";
  home.homeDirectory = "/home/georgian";
  home.stateVersion = "22.05";

  home.packages = [
    pkgs.bat
    pkgs.unzip
    pkgs.neovim
  ];

  imports = [
    ./ssh.nix
    ./git.nix
  ];

  programs.home-manager.enable = true;
}
