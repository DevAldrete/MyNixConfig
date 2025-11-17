{ pkgs, ... }:

{
  # Set your home state version.
  imports = [ /Users/aldrete/.config/nix-secrets/secrets.nix ];

  home.stateVersion = "23.11";
  home.username = "aldrete";
  home.homeDirectory = "/Users/aldrete";

  # === YOUR PACKAGES GO HERE ===
  home.packages = [
    pkgs.home-manager
    pkgs.git
    pkgs.neovim
    pkgs.ripgrep
    pkgs.fzf
    pkgs.eza
    pkgs.statix
  ];

  # === YOUR PROGRAMS & DOTFILES GO HERE ===
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "DevAldrete";
        email = "aldretelearns@gmail.com";
      };
    };
  };

  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };
    
    initContent = ''
      # ==== ALIASES ====
      alias vi="nvim"
      
      # ==== ENVIRONMENT VARIABLES ====
      
      # ==== LOAD HOMEBREW ====
      # This finds brew and adds it to your PATH
      # (This is for Apple Silicon, /opt/homebrew)
      if [ -f /opt/homebrew/bin/brew ]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
      fi
      
      # (Uncomment this if you are on an Intel Mac)
      # if [ -f /usr/local/bin/brew ]; then
      #   eval "$(/usr/local/bin/brew shellenv)"
      # fi
    '';
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };
  # -----------------------------------------------------------------
  # 🚀 KITTY CONFIGURATION (Manual Mode)
  # -----------------------------------------------------------------
  home.file.".config/kitty/kitty.conf".text = ''
    # --- Shell ---
    # This value will be correctly inserted by Nix
    shell ${pkgs.zsh}/bin/zsh

    # --- Font ---
    font_family FiraCode Nerd Font Mono
    font_size 14.0
    bold_font auto
    italic_font auto
    
    # --- Window ---
    window_padding_width 10
    background_opacity 0.90
    
    # --- macOS specific ---
    macos_titlebar_color background
    hide_window_decorations titlebar-only
    macos_option_as_alt both
    
    # --- Cursor ---
    cursor_shape beam
    cursor_blink_interval 0.5

    # --- Scrolling ---
    scrollback_lines 10000
    
    # --- Selection ---
    copy_on_select no

    # --- Tokyo Night Theme Colors ---
    foreground #c0caf5
    background #1a1b26
    
    color0  #15161e
    color8  #414868
    
    color1  #f7768e
    color9  #f7768e
    
    color2  #9ece6a
    color10 #9ece6a
    
    color3  #e0af68
    color11 #e0af68
    
    color4  #7aa2f7
    color12 #7aa2f7
    
    color5  #bb9af7
    color13 #bb9af7
    
    color6  #7dcfff
    color14 #7dcfff
    
    color7  #a9b1d6
    color15 #c0caf5
    
    cursor #F5E0DC
    cursor_text_color #1a1b26

    # --- Keybindings ---
    map cmd+plus  change_font_size all +1.0
    map cmd+minus change_font_size all -1.0
    map cmd+0     change_font_size all 0
    
    map cmd+c     copy_to_clipboard
    map cmd+v     paste_from_clipboard
    
    map cmd+shift+k scroll_line_up
    map cmd+shift+j scroll_line_down
    map cmd+page_up   scroll_page_up
    map cmd+page_down scroll_page_down
    
    map cmd+n new_window
    map cmd+q quit
  '';

  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "aldretelearns@gmail.com";
        name = "DevAldrete";
      };
    };
  };
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    keys = [
    ];
  };
}
