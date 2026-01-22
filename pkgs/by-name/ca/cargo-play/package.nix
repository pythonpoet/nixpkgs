{
  lib,
  rustPlatform,
  fetchFromGitHub,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-play";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "fanzeyi";
    repo = "cargo-play";
    tag = finalAttrs.version;
    sha256 = "sha256-Z5zcLQYfQeGybsnt2U+4Z+peRHxNPbDriPMKWhJ+PeA=";
  };

  cargoHash = "sha256-kgdg2GZmFGMua3eYo30tpDTFBKncbaiONJf+ocfMaBk=";

  # these tests require internet access
  checkFlags = [
    "--skip=dtoa_test"
    "--skip=infer_override"
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
    description = "Run your rust code without setting up cargo";
    mainProgram = "cargo-play";
    homepage = "https://github.com/fanzeyi/cargo-play";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = [ ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = [ ];
=======
    changelog = "https://github.com/fanzeyi/cargo-play/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.progrm_jarvis ];
>>>>>>> master
  };
})
