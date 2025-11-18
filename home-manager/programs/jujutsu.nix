# ./home-manager/programs/jujutsu.nix
{
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "aldretelearns@gmail.com";
        name = "DevAldrete";
      };
    };
  };
}
