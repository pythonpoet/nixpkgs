{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
  libgit2,
  libssh2,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "gitlogue";
<<<<<<< HEAD
  version = "0.5.0";
||||||| 213fed0310e3
  version = "0.3.0";
=======
  version = "0.7.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "unhappychoice";
    repo = "gitlogue";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-OKRgtWa1HbUgczuS0EdMgosuKPaZJhzIfjwKZAAaBCs=";
||||||| 213fed0310e3
    hash = "sha256-IKCjv33I6bM5PSp1IBXEArHgNF1hV9J+Zko0uV2OPZA=";
=======
    hash = "sha256-mZ2A6274Ujpo5rTewFaMUslZhLCKJ2iw43J8X3vuBBI=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-cq1bjOxuGJDRLoO0p5tmGF4IjUojXF52p/n6mugPdPg=";
||||||| 213fed0310e3
  cargoHash = "sha256-j8h+EI+vOf8nN69ROFiwuUBRi84T/QdhbdMpAMupkoM=";
=======
  cargoHash = "sha256-MueaRVomOiQsPSOnHpB/k9a8fNpKpFRilAXgIkVxZ94=";
>>>>>>> master

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [
    openssl
    libgit2
    libssh2
  ];

  env = {
    OPENSSL_NO_VENDOR = 1;
    LIBGIT2_NO_VENDOR = 1;
    LIBSSH2_SYS_USE_PKG_CONFIG = 1;
  };

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Cinematic Git commit replay tool for the terminal";
    longDescription = ''
      A cinematic Git commit replay tool for the terminal, turning your Git history into a living, animated story.
    '';
    homepage = "https://github.com/unhappychoice/gitlogue";
    changelog = "https://github.com/unhappychoice/gitlogue/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.isc;
    maintainers = with lib.maintainers; [ chillcicada ];
    mainProgram = "gitlogue";
  };
})
