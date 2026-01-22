{
  rustPlatform,
  fetchFromGitHub,
  lib,
}:

rustPlatform.buildRustPackage rec {
  pname = "rpg-cli";
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "facundoolano";
    repo = "rpg-cli";
    rev = version;
    sha256 = "sha256-xNkM8qN9vg/WGRR/96aCQRVjIbSdSs2845l6oE6+tzg=";
  };

  cargoHash = "sha256-GzVdcQzYmKwb3GWhmbTb9HdBPosKgbimgvwZTfBMEk8=";

  # tests assume the authors macbook, and thus fail
  doCheck = false;

  meta = {
    description = "Your filesystem as a dungeon";
    mainProgram = "rpg-cli";
    homepage = "https://github.com/facundoolano/rpg-cli";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ lom ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ lom ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
  };
}
