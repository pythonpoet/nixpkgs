{
  lib,
  fetchFromGitHub,
  buildGoModule,
  nixosTests,
}:

buildGoModule rec {
  pname = "lego";
<<<<<<< HEAD
  version = "4.29.0";
||||||| 213fed0310e3
  version = "4.27.0";
=======
  version = "4.31.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "go-acme";
    repo = "lego";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-czCOrgC3Xy42KigAe+tsPRdWqxgdHFl0KN3Ei2zeyy8=";
||||||| 213fed0310e3
    hash = "sha256-mc/aWjYvgF5PSl6Ng9oLNWAlGDjnhzEouo9LXh/PFsE=";
=======
    hash = "sha256-YzslAEZVJDAa8Q7/YTWb2pH0MiWwgHipL11A/UD+nYg=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-OnCtobizqDrqZTQenRPBTlUHvNx/xX34PYw8K4rgxSk=";
||||||| 213fed0310e3
  vendorHash = "sha256-648FrZqSatEYONzj03x8z8pV0WIvfYnIOcxERxYxSPw=";
=======
  vendorHash = "sha256-9ead3yA/fvNRP4uP2O6Wy6aRzVAig3iyin8UgMcA8mc=";
>>>>>>> master

  doCheck = false;

  subPackages = [ "cmd/lego" ];

  ldflags = [
    "-s"
    "-w"
    "-X main.version=${version}"
  ];

  meta = {
    description = "Let's Encrypt client and ACME library written in Go";
    license = lib.licenses.mit;
    homepage = "https://go-acme.github.io/lego/";
    teams = [ lib.teams.acme ];
    mainProgram = "lego";
  };

  passthru.tests = {
    lego-http = nixosTests.acme.http01-builtin;
    lego-dns = nixosTests.acme.dns01;
  };
}
