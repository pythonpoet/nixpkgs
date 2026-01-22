{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "marathonctl";
  version = "0.0.7";

  src = fetchFromGitHub {
    owner = "shoenig";
    repo = "marathonctl";
    rev = "v${version}";
    sha256 = "sha256-MigmvOwYa0uYPexchS4MP74I1Tp6QHYuQVSOh1+FrMg=";
  };

  vendorHash = "sha256-Oiol4KuPOyJq2Bfc5div+enX4kQqYn20itmwWBecuIg=";

  ldflags = [
    "-s"
    "-w"
  ];

  meta = {
    homepage = "https://github.com/shoenig/marathonctl";
    description = "CLI tool for Marathon";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ manveru ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ manveru ];
=======
    license = lib.licenses.mit;
>>>>>>> master
    mainProgram = "marathonctl";
  };
}
