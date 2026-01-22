{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
  zlib,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-shuttle";
  version = "0.57.3";

  src = fetchFromGitHub {
    owner = "shuttle-hq";
    repo = "shuttle";
    tag = "v${finalAttrs.version}";
    hash = "sha256-qPevl75wmOYVhTgMiJOi+6j8LBWKzM7HPhd5mdf2B+8=";
  };

  cargoHash = "sha256-H2fy2NQvLQEzbQik+nrUvoYZaWQRXX6PpO9LcYfiF2I=";

  nativeBuildInputs = [ pkg-config ];

  buildInputs = [
    openssl
    zlib
  ];

  cargoBuildFlags = [
    "-p"
    "cargo-shuttle"
  ];

  cargoTestFlags = finalAttrs.cargoBuildFlags ++ [
    # other tests are failing for different reasons
    "init::shuttle_init_tests::"
  ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "--version";

  passthru.updateScript = nix-update-script { };

  meta = {
>>>>>>> master
    description = "Cargo command for the shuttle platform";
    mainProgram = "cargo-shuttle";
    homepage = "https://shuttle.rs";
<<<<<<< HEAD
    changelog = "https://github.com/shuttle-hq/shuttle/releases/tag/${src.rev}";
    license = lib.licenses.asl20;
    maintainers = [ ];
||||||| 213fed0310e3
    changelog = "https://github.com/shuttle-hq/shuttle/releases/tag/${src.rev}";
    license = licenses.asl20;
    maintainers = [ ];
=======
    changelog = "https://github.com/shuttle-hq/shuttle/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.asl20;
    maintainers = [ lib.maintainers.progrm_jarvis ];
>>>>>>> master
  };
})
