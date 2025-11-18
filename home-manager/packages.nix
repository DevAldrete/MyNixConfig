{ pkgs, ... }: 

{
  home.packages = [
    pkgs.neovim
    pkgs.home-manager
    pkgs.git 
    pkgs.ripgrep
    pkgs.statix
    pkgs.eza
    pkgs.fzf
    pkgs.lua
    pkgs.nh
  ];
}
