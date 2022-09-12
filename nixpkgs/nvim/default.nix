{ config, pkgs, lib, ... }:
with lib;
let
  # Remove stable when 1.6.0 is no longer broken
  # python-debug = pkgs.python310.withPackages (p: with p; [debugpy]);
in
  {
    programs.neovim = {
      enable = true;
      extraConfig = ''
        :luafile ~/.config/nvim/lua/georgian/init.lua
      '';
      plugins = with pkgs.vimPlugins;
        let
        in [
      	  vim-nix
      	  gruvbox-community
          nvim-web-devicons
          nvim-tree-lua
        ];
    };

     xdg.configFile.nvim = {
      source = ./config;
      recursive = true;
    };
  }
