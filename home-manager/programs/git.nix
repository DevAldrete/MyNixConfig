# ./home-manager/programs/git.nix
{
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "DevAldrete";
        email = "aldretelearns@gmail.com";
      };
    };
  };
}
