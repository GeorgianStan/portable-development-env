{ config, pkgs, ... }:

{
    programs.neovim = {
        enable = true;
        vimAlias = true;
        extraConfig = builtins.readFile ./nvim/init.vim;

        plugins = with pkgs.vimPlugins; [
          # Syntax / Language Support ##########################
          vim-nix
          gruvbox
        ];
    };
}