<<<<<<< HEAD
{
  lib,
  rustPlatform,
  fetchFromGitHub,
  versionCheckHook,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "mktoc";
  version = "4.0.0";

  src = fetchFromGitHub {
    owner = "KevinGimbel";
    repo = "mktoc";
    rev = "v${finalAttrs.version}";
    hash = "sha256-Pq4o0t0cUrkXff+qSU5mlDo5A0nhFBuFk3Xz10AWDeo=";
  };

  cargoHash = "sha256-SdwNXstW61Yvp1V72nxl+9dijGJwyrdPYZo+q0UGYGg=";

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  meta = {
    description = "Markdown Table of Content generator";
    homepage = "https://github.com/KevinGimbel/mktoc";
    license = lib.licenses.mit;
    mainProgram = "mktoc";
    maintainers = with lib.maintainers; [ kevingimbel ];
  };
})
||||||| 213fed0310e3
=======
{
  lib,
  rustPlatform,
  fetchFromGitHub,
  versionCheckHook,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "mktoc";
  version = "5.1.1";

  src = fetchFromGitHub {
    owner = "KevinGimbel";
    repo = "mktoc";
    rev = "v${finalAttrs.version}";
    hash = "sha256-EyQrfLpeWacAEpVnaz4alEF/IAjSH/4HsTsdJldOJxg=";
  };

  cargoHash = "sha256-yTTJ0gxmQhn40eI+Elzvv/t0WLivI0TV8B/LS6KLg14=";

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  meta = {
    description = "Markdown Table of Content generator";
    homepage = "https://github.com/KevinGimbel/mktoc";
    license = lib.licenses.mit;
    mainProgram = "mktoc";
    maintainers = with lib.maintainers; [ kevingimbel ];
  };
})
>>>>>>> master
