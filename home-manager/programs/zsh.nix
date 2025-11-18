# ./home-manager/programs/zsh.nix
{
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
}
