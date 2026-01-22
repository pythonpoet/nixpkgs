{
  lib,
  bash,
  replaceVars,
  rustPlatform,
  fetchFromGitHub,
  versionCheckHook,
  nix-update-script,
  rust-jemalloc-sys,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "pyrefly";
<<<<<<< HEAD
  version = "0.46.1";
||||||| 213fed0310e3
  version = "0.34.0";
=======
  version = "0.49.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "facebook";
    repo = "pyrefly";
    tag = finalAttrs.version;
<<<<<<< HEAD
    hash = "sha256-BMGTUoIkDUaM1Ox+U8rquqZ822qB2oGuk7/5b1EnX2I=";
||||||| 213fed0310e3
    hash = "sha256-HPPDsvWEFfh/GNMUPiVjQr28YBBs2DACBGM3cxo5Nx4=";
=======
    hash = "sha256-r0KNzXZA02J9fYUI0oEoH188OemVzambC+GKlQaq5oU=";
>>>>>>> master
  };

  buildAndTestSubdir = "pyrefly";
<<<<<<< HEAD
  cargoHash = "sha256-mXJuZXf5zcxarC+ftT2W15+yvC7gt7rocoCMq00v9a0=";
||||||| 213fed0310e3
  cargoHash = "sha256-46kcoBG/PWwf8VdlvLNzEhfYRTmmKi/uTjwFkl7Wozg=";
=======
  cargoHash = "sha256-nL703jB01JI7LILJKl4FiaRHNyjxNluZpQmJCTTzVdY=";
>>>>>>> master

  buildInputs = [ rust-jemalloc-sys ];

  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "--version";
  doInstallCheck = true;

  patches = [
    (replaceVars ./fix-shebang.patch { bash = lib.getExe bash; })
  ];

  # redirect tests writing to /tmp
  preCheck = ''
    export TMPDIR=$(mktemp -d)
  '';

  # requires unstable rust features
  env.RUSTC_BOOTSTRAP = 1;

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Fast type checker and IDE for Python";
    homepage = "https://github.com/facebook/pyrefly";
    license = lib.licenses.mit;
    mainProgram = "pyrefly";
    platforms = lib.platforms.linux ++ lib.platforms.darwin;
    maintainers = with lib.maintainers; [
      cybardev
      QuiNzX
    ];
  };
})
