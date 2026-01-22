{
  lib,
  rustPlatform,
  fetchFromGitHub,
  stdenv,
  installShellFiles,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "fclones";
  version = "0.35.0";

  src = fetchFromGitHub {
    owner = "pkolaczk";
    repo = "fclones";
    tag = "v${finalAttrs.version}";
    hash = "sha256-OCRfJh6vfAkL86J1GuLgfs57from3fx0NS1Bh1+/oXE=";
  };

  cargoHash = "sha256-aEjsBhm0iPysA1Wz1Ea7rtX0g/yH/rklUkYV/Elxcq8=";

  nativeBuildInputs = [ installShellFiles ];

  # device::test_physical_device_name test fails on Darwin
  doCheck = !stdenv.hostPlatform.isDarwin;

  checkFlags = [
    # ofborg sometimes fails with "Resource temporarily unavailable"
    "--skip=cache::test::return_none_if_different_transform_was_used"
  ];

  postInstall = lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform) ''
    # setting PATH required so completion script doesn't use full path
    export PATH="$PATH:$out/bin"
    installShellCompletion --cmd $pname \
      --bash <(fclones complete bash) \
      --fish <(fclones complete fish) \
      --zsh <(fclones complete zsh)
  '';

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  versionCheckProgramArg = "--version";
  doInstallCheck = true;

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
>>>>>>> master
    description = "Efficient Duplicate File Finder and Remover";
    homepage = "https://github.com/pkolaczk/fclones";
<<<<<<< HEAD
    changelog = "https://github.com/pkolaczk/fclones/releases/tag/${src.rev}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
||||||| 213fed0310e3
    changelog = "https://github.com/pkolaczk/fclones/releases/tag/${src.rev}";
    license = licenses.mit;
    maintainers = with maintainers; [
=======
    changelog = "https://github.com/pkolaczk/fclones/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
>>>>>>> master
      cyounkins
      progrm_jarvis
    ];
    mainProgram = "fclones";
  };
})
