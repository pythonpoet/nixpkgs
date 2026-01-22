{
  lib,
  fetchCrate,
  rustPlatform,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "jsonschema-cli";
<<<<<<< HEAD
  version = "0.37.4";
||||||| 213fed0310e3
  version = "0.37.1";
=======
  version = "0.38.1";
>>>>>>> master

  src = fetchCrate {
    pname = "jsonschema-cli";
    inherit (finalAttrs) version;
<<<<<<< HEAD
    hash = "sha256-qmxl4DzctXnDGeqZukMiurFoLt982ngDIo0Cum4kkcQ=";
||||||| 213fed0310e3
    hash = "sha256-JjXRQ4u5ZbMO53vJJLSCqOhl4EeEH6sTyz4WTK7k55A=";
=======
    hash = "sha256-W3pyT5DK8ADkWi7znuTDTq1hjRTOwhg9rSmuGZTX8r0=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-t2lRBVPk9bkvRsCxMNi30F3dkwr6angEGfD34UuH+EY=";
||||||| 213fed0310e3
  cargoHash = "sha256-AP38iKce1UAwidTsakaryGOopC/BalAKfzOnvwOWg/0=";
=======
  cargoHash = "sha256-C8A+cyNix0Q9OACyyPM3A74jZKNBCGz/622YsZqtY2E=";
>>>>>>> master

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Fast command-line tool for JSON Schema validation";
    homepage = "https://github.com/Stranger6667/jsonschema";
    changelog = "https://github.com/Stranger6667/jsonschema/releases/tag/rust-v${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      kachick
    ];
    mainProgram = "jsonschema-cli";
  };
})
