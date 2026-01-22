{
  lib,
  rustPlatform,
  fetchFromGitHub,
}:

rustPlatform.buildRustPackage rec {
  pname = "flake-checker";
<<<<<<< HEAD
  version = "0.2.10";
||||||| 213fed0310e3
  version = "0.2.8";
=======
  version = "0.2.11";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "DeterminateSystems";
    repo = "flake-checker";
    rev = "v${version}";
<<<<<<< HEAD
    hash = "sha256-/hwcRsaVdLvjKnCjFzy4T/zdvWjWAMBtfgJX/cNpmOc=";
||||||| 213fed0310e3
    hash = "sha256-elHpiMGwJ2KnN75EOTjsjpziYfXiRyTeixhY4rd85m0=";
=======
    hash = "sha256-0ftHzqFpFkKZKByWJ49/YySrXBU4lCxvcpbTuMY8ZXs=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-5pK0l84L4cEhw5d8n8j6JWEXEbsmWHmHJxB5ZMrnAU0=";
||||||| 213fed0310e3
  cargoHash = "sha256-QS38tAJ1V0Avd7N+Mhexv23oh+kxtmr/qvQZLRwP9zA=";
=======
  cargoHash = "sha256-5zzSLk5QT3X6rdGEPHPelXFd5nOxNtlbqDHwV7fFDKY=";
>>>>>>> master

  meta = {
    description = "Health checks for your Nix flakes";
    homepage = "https://github.com/${src.owner}/${src.repo}";
    changelog = "https://github.com/${src.owner}/${src.repo}/releases/tag/${src.rev}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ lucperkins ];
    mainProgram = "flake-checker";
  };
}
