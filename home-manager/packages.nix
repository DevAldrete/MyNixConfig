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
    pkgs.rustup
    pkgs.bat
    pkgs.python313
    pkgs.go
    pkgs.bun
    pkgs.nix-direnv
  ];
}
