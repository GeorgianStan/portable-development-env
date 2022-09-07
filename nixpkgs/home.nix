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
    pkgs.neovim
  ];

  imports = [
    ./ssh.nix
    ./git.nix
    ./bash.nix
  ];

  programs.home-manager.enable = true;
}
