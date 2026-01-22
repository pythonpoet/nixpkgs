{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "scooter";
<<<<<<< HEAD
  version = "0.8.4";
||||||| 213fed0310e3
  version = "0.8.3";
=======
  version = "0.8.5";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "thomasschafer";
    repo = "scooter";
    rev = "v${version}";
<<<<<<< HEAD
    hash = "sha256-hOuhgPE24DBF/uFz/S51h+d7j5yDjPs8Mvfkcp2BQsc=";
||||||| 213fed0310e3
    hash = "sha256-DgxyurJmhpTHdmLyRaZkfiPYdMYdqeQOC+ZncfW5GdQ=";
=======
    hash = "sha256-hKF0b3vgZ8kIK9QT129Ms+Rua6+Rrv8Jk2pt81eCc5Y=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-S2oLItnyRURPyYDroa7PlHbKIhnE4HdXeo1y6cAKvss=";
||||||| 213fed0310e3
  cargoHash = "sha256-vq2d6UX4TbPO6Uya3m8uKff7+w1+VfV4Bec4Uyx/8pQ=";
=======
  cargoHash = "sha256-008wp5xa0G6E3e6rIhd1sE8cIIcHQ3LoCBl/cJx76Sw=";
>>>>>>> master

  # Ensure that only the `scooter` package is built (excluding `xtask`)
  cargoBuildFlags = [
    "--package"
    "scooter"
  ];

  # Many tests require filesystem writes which fail in Nix sandbox
  doCheck = false;

  meta = {
    description = "Interactive find and replace in the terminal";
    homepage = "https://github.com/thomasschafer/scooter";
    changelog = "https://github.com/thomasschafer/scooter/commits/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ felixzieger ];
    mainProgram = "scooter";
  };
}
