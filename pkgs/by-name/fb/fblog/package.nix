{
  lib,
  rustPlatform,
  fetchFromGitHub,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "fblog";
  version = "4.17.0";

  src = fetchFromGitHub {
    owner = "brocode";
    repo = "fblog";
    rev = "v${finalAttrs.version}";
    hash = "sha256-SDOYW9CpC7E62nVnZL04Kx9ckVEZyvcMolJCfKDqdMk=";
  };

  cargoHash = "sha256-Pn8HsBz+5OHz4jF6xmORLQSLYClTHpaJXWiS5sPyV2w=";

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
    description = "Small command-line JSON log viewer";
    mainProgram = "fblog";
    homepage = "https://github.com/brocode/fblog";
<<<<<<< HEAD
    license = lib.licenses.wtfpl;
    maintainers = [ ];
||||||| 213fed0310e3
    license = licenses.wtfpl;
    maintainers = [ ];
=======
    changelog = "https://github.com/brocode/fblog/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.wtfpl;
    maintainers = [ lib.maintainers.progrm_jarvis ];
>>>>>>> master
  };
})
