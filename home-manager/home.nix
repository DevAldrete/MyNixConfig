{ pkgs, ... }:

{
  # Set your home state version.
  imports = [ 
    ./programs/git.nix
    ./programs/jujutsu.nix
    ./programs/kitty.nix
    ./programs/ssh.nix
    ./programs/zoxide.nix
    ./programs/zsh.nix
    ./packages.nix
  ];

  home = {
    stateVersion = "23.11";
    username = "aldrete";
    homeDirectory = "/Users/aldrete";
  };
}
