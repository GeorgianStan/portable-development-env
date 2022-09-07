{
  programs.git = {
    enable = true;
    userName = "GeorgianStan";
    userEmail = "georgian.stan8@gmail.com";
    includes = [
      { path = "~/.gitlocalconfig"; }
    ];
    extraConfig = {
      init = {
        defaultBranch = "master";
      };
    };
  };
}
