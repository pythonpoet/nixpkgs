{
  lib,
  fetchFromGitHub,
  rustPlatform,
<<<<<<< HEAD
  stdenvNoCC,
||||||| 213fed0310e3
=======
  stdenvNoCC,
  gitMinimal,
>>>>>>> master
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "rumdl";
<<<<<<< HEAD
  version = "0.0.203";
||||||| 213fed0310e3
  version = "0.0.181";
=======
  version = "0.0.221";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "rvben";
    repo = "rumdl";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-co+DlgUUxHR77wXCapzCSScImL3NPzFXM5d1YFPZxgk=";
||||||| 213fed0310e3
    hash = "sha256-qwsZ4S0F9JEpVP05RbvUQT8mBemtJQwJ6DRMp+r2TM0=";
=======
    hash = "sha256-r9aVSllmz7fXlePRC/vS6vxmi7zhUyVPEEo6dEkokKg=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-gZw1DsKsIh4xeovJYj3lgQ+2cqqy8GfkEhtDfgq7LWs=";
||||||| 213fed0310e3
  cargoHash = "sha256-DwCzpyoJcnD/j3umEJGMaMlt0WgPtK3HaztDieuWo90=";
=======
  cargoHash = "sha256-LedT/ZwDz9FBsHZdObPZc2CoBNR8gNYF/4kvefgmNq8=";
>>>>>>> master

  cargoBuildFlags = [
    "--bin=rumdl"
  ];

<<<<<<< HEAD
  # Non-specific tests often fail on Darwin (especially aarch64-darwin),
  # on both Hydra and GitHub-hosted runners, even with __darwinAllowLocalNetworking enabled.
  doCheck = !stdenvNoCC.hostPlatform.isDarwin;
||||||| 213fed0310e3
  __darwinAllowLocalNetworking = true; # required for LSP tests
=======
  # Non-specific tests often fail on Darwin (especially aarch64-darwin),
  # on both Hydra and GitHub-hosted runners, even with __darwinAllowLocalNetworking enabled.
  doCheck = !stdenvNoCC.hostPlatform.isDarwin;

  nativeCheckInputs = [
    gitMinimal
  ];
>>>>>>> master

  useNextest = true;

  cargoTestFlags = [
    "--profile ci"
  ];

  checkFlags = [
    # Skip Windows tests
    "--skip comprehensive_windows_tests"
    "--skip windows_vscode_tests"
  ];

  doInstallCheck = true;
  nativeInstallCheckInputs = [
    versionCheckHook
  ];

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Markdown linter and formatter";
    longDescription = ''
      rumdl is a high-performance Markdown linter and formatter
      that helps ensure consistency and best practices in your Markdown files.
    '';
    homepage = "https://github.com/rvben/rumdl";
    changelog = "https://github.com/rvben/rumdl/blob/v${finalAttrs.version}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      kachick
      hasnep
    ];
    mainProgram = "rumdl";
    platforms = with lib.platforms; unix ++ windows;
  };
})
