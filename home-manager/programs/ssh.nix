# ./home-manager/programs/ssh.nix
{
  programs.ssh = {
    enable = true;
    addKeysToAgent = "yes";
    keys = [
      # You can add key paths here, but it's often
      # better to manage them with 'ssh-add' or 'age'
    ];
  };
}
