{
  lib,
  buildGoModule,
  fetchFromGitHub,
  testers,
  git-sizer,
}:

buildGoModule rec {
  pname = "git-sizer";
  version = "1.5.0";

  src = fetchFromGitHub {
    owner = "github";
    repo = "git-sizer";
    rev = "v${version}";
    sha256 = "sha256-On7QBTzKfnuuzwMQ8m1odxGqfIKL+EDg5V05Kxuhmqw=";
  };

  vendorHash = "sha256-oRlsD99XiI/0ZWibjyRcycmGab+vMbXrV5hIdIyUDYg=";

  ldflags = [
    "-s"
    "-w"
    "-X main.BuildVersion=${version}"
  ];

  doCheck = false;

  passthru.tests.vesion = testers.testVersion {
    package = git-sizer;
  };

  meta = {
    description = "Compute various size metrics for a Git repository";
    homepage = "https://github.com/github/git-sizer";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ matthewbauer ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ matthewbauer ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
    mainProgram = "git-sizer";
  };
}
