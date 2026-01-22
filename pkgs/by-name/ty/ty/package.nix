{
  lib,
  stdenv,
  rustPlatform,
  fetchFromGitHub,

  # nativeBuildInputs
  installShellFiles,

  buildPackages,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "ty";
<<<<<<< HEAD
  version = "0.0.1-alpha.32";
||||||| 213fed0310e3
  version = "0.0.1-alpha.27";
=======
  version = "0.0.13";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "astral-sh";
    repo = "ty";
    tag = finalAttrs.version;
    fetchSubmodules = true;
<<<<<<< HEAD
    hash = "sha256-Kc5jxDpQv7bm4J7EdejkrUv/lz7hRc01riUIEdv+wmY=";
||||||| 213fed0310e3
    hash = "sha256-oyy6eeRr7sCCjZhjnx0zKSy9d2HwgZFKRDidmxP0juA=";
=======
    hash = "sha256-2KPnFNutndxE5ap0E9BCL5w6vpnfow8GIY4/N9dgYy8=";
>>>>>>> master
  };

  # For Darwin platforms, remove the integration test for file notifications,
  # as these tests fail in its sandboxes.
  postPatch = lib.optionalString stdenv.hostPlatform.isDarwin ''
    rm ${finalAttrs.cargoRoot}/crates/ty/tests/file_watching.rs
  '';

  cargoRoot = "ruff";
  buildAndTestSubdir = finalAttrs.cargoRoot;

  cargoBuildFlags = [ "--package=ty" ];

<<<<<<< HEAD
  cargoHash = "sha256-GEf/gU2DXz+u7kPHAB1NRqkmn0f7NV3M5U9u17adtkI=";
||||||| 213fed0310e3
  cargoHash = "sha256-fpff3fO1Udtldg68vvy+BQs1ynntGM0suzGnpnhOV5A=";
=======
  cargoHash = "sha256-E/kR6AxzpIqKMM80+ute5Z6LUL5f39RYfj7BnGOg6V4=";
>>>>>>> master

  nativeBuildInputs = [ installShellFiles ];

  # `ty`'s tests use `insta-cmd`, which depends on the structure of the `target/` directory,
  # and also fails to find the environment variable `$CARGO_BIN_EXE_ty`, which leads to tests failing.
  # Instead, we specify the path ourselves and forgo the lookup.
  # As the patches occur solely in test code, they have no effect on the packaged `ty` binary itself.
  #
  # `stdenv.hostPlatform.rust.cargoShortTarget` is taken from `cargoSetupHook`'s `installPhase`,
  # which constructs a path as below to reference the built binary.
  preCheck = ''
    export CARGO_BIN_EXE_ty="$PWD"/target/${stdenv.hostPlatform.rust.cargoShortTarget}/release/ty
  '';

  cargoTestFlags = [
    "--package=ty" # CLI tests; file-watching tests only on Linux platforms
    "--package=ty_python_semantic" # core type checking tests
    "--package=ty_test" # test framework tests
  ];

<<<<<<< HEAD
  checkFlags = [
    # Flaky:
    # called `Result::unwrap()` on an `Err` value: Os { code: 26, kind: ExecutableFileBusy, message: "Text file busy" }
    "--skip=python_environment::ty_environment_and_active_environment"
    "--skip=python_environment::ty_environment_is_only_environment"
    "--skip=python_environment::ty_environment_is_system_not_virtual"
  ];

||||||| 213fed0310e3
=======
  checkFlags = [
    # Flaky:
    # called `Result::unwrap()` on an `Err` value: Os { code: 26, kind: ExecutableFileBusy, message: "Text file busy" }
    "--skip=python_environment::ty_environment_and_active_environment"
    "--skip=python_environment::ty_environment_and_discovered_venv"
    "--skip=python_environment::ty_environment_is_only_environment"
    "--skip=python_environment::ty_environment_is_system_not_virtual"
  ];

>>>>>>> master
  nativeInstallCheckInputs = [ versionCheckHook ];
  doInstallCheck = true;

  postInstall = lib.optionalString (stdenv.hostPlatform.emulatorAvailable buildPackages) (
    let
      emulator = stdenv.hostPlatform.emulator buildPackages;
    in
    ''
      installShellCompletion --cmd ty \
        --bash <(${emulator} $out/bin/ty generate-shell-completion bash) \
        --fish <(${emulator} $out/bin/ty generate-shell-completion fish) \
        --zsh <(${emulator} $out/bin/ty generate-shell-completion zsh)
    ''
  );

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Extremely fast Python type checker and language server, written in Rust";
    homepage = "https://github.com/astral-sh/ty";
    changelog = "https://github.com/astral-sh/ty/blob/${finalAttrs.version}/CHANGELOG.md";
    license = lib.licenses.mit;
    mainProgram = "ty";
    maintainers = with lib.maintainers; [
      bengsparks
      GaetanLepage
    ];
  };
})
