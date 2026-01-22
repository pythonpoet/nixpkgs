{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "gosh";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "redcode-labs";
    repo = "GoSH";
    tag = "v${version}";
    hash = "sha256-h4WqaN2okAeaU/+0fs8zLYDtyQLuLkCDdGrkGz8rdhg=";
  };

  vendorHash = "sha256-ITz6nkhttG6bsIZLsp03rcbEBHUQ7pFl4H6FOHTXIU4=";

  subPackages = [ "." ];

  meta = {
    description = "Reverse/bind shell generator";
    homepage = "https://github.com/redcode-labs/GoSH";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    teams = [ lib.teams.redcodelabs ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
    teams = [ teams.redcodelabs ];
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "GoSH";
  };
}
