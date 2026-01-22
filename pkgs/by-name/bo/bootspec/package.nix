{
  lib,
  rustPlatform,
  fetchFromGitHub,
  nix-update-script,
}:
rustPlatform.buildRustPackage rec {
  pname = "bootspec";
  version = "2.0.0";

  src = fetchFromGitHub {
    owner = "DeterminateSystems";
    repo = "bootspec";
    rev = "v${version}";
    hash = "sha256-FeNBn/HeOanvFSCH9gNBCwlSJx1EhhEdrgX2rbXdZgI=";
  };

  cargoHash = "sha256-vJVOseAvIGNxos180Z5OHgo3u/2iyeOgOetXTJxyZx0=";

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Implementation of RFC-0125's datatype and synthesis tooling";
    homepage = "https://github.com/DeterminateSystems/bootspec";
<<<<<<< HEAD
    license = lib.licenses.mit;
    teams = [ lib.teams.determinatesystems ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.mit;
    teams = [ teams.determinatesystems ];
    platforms = platforms.unix;
=======
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.cole-h ];
    platforms = lib.platforms.unix;
>>>>>>> master
  };
}
