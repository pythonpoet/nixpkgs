{
  lib,
  rustPlatform,
  fetchCrate,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "rust-petname";
  version = "2.0.2";

  src = fetchCrate {
    inherit (finalAttrs) version;
    crateName = "petname";
    hash = "sha256-KP+GdGlwLHcKE8nAmFr2wHbt5RD9Ptpiz1X5HgJ6BgU=";
  };

  cargoHash = "sha256-gZxZeirvGHwm8C87HdCBYr30+0bbjwnWxIQzcLgl3iQ=";

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
    description = "Generate human readable random names";
    homepage = "https://github.com/allenap/rust-petname";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = [ ];
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = [ ];
=======
    license = lib.licenses.asl20;
    maintainers = [ lib.maintainers.progrm_jarvis ];
>>>>>>> master
    mainProgram = "petname";
  };
})
