{
  description = "My Home Manager Flake";

  # Define all the 'inputs' (dependencies) for this flake
  inputs = {
    # Nixpkgs (the main package repository)
    nixpkgs.url = "github:nixOS/nixpkgs/nixpkgs-unstable";
    
    # Home Manager
    home-manager = {
      url = "github:nix-community/home-manager";
      # Make sure home-manager uses the same nixpkgs as we do
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  # Define all the 'outputs' (what this flake provides)
  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      # Set our system. Change "aarch64-darwin" if you're on Intel ("x86_64-darwin")
      system = "aarch64-darwin"; # <-- M1/M2/M3 Mac
      # system = "x86_64-darwin"; # <-- Intel Mac

      # Create a new 'pkgs' set configured for our system
      pkgs = nixpkgs.legacyPackages.${system};

    in {
      # This is the main output that Home Manager will use
      homeConfigurations = {
        # === YOUR USERNAME GOES HERE ===
        "aldrete" = home-manager.lib.homeManagerConfiguration {
        # =================================
        
          inherit pkgs; # Pass our 'pkgs' set to home-manager
          
          # This is the actual configuration file we'll edit
          modules = [ ./home.nix ];
          
          # (Optional) You can add extra special arguments here
          extraSpecialArgs = { };
        };
      };
    };
}
