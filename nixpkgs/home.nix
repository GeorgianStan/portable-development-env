{ config, pkgs, ... }:

{
  home.username = "georgian";
  home.homeDirectory = "/home/georgian";
  home.stateVersion = "22.05";

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  home.packages = [
    pkgs.bat
    pkgs.unzip
  ];

  imports = [
    ./ssh.nix
    ./git.nix
    ./bash.nix
    ./nvim
  ];

  programs.home-manager.enable = true;
}

