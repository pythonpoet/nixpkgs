{
  lib,
  fetchFromGitHub,
  rustPlatform,
  versionCheckHook,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "automatic-timezoned";
<<<<<<< HEAD
  version = "2.0.103";
||||||| 213fed0310e3
  version = "2.0.102";
=======
  version = "2.0.108";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "maxbrunet";
    repo = "automatic-timezoned";
    rev = "v${finalAttrs.version}";
<<<<<<< HEAD
    sha256 = "sha256-VxD+aXGbJTdNAI9V3meQjF4CfhPr7lChhVAN4WnH6ac=";
||||||| 213fed0310e3
    sha256 = "sha256-GErr38+e8HlpzHfI4pxLcDJJnpxKTlsMTFwIXXAL02c=";
=======
    sha256 = "sha256-aizxFWQpiwEo197Oydez2nAChQQ32jPqOEW3wNLnb7c=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-0AZNViP2jE6/FZdo0LaLjxBPkPqnd2kvZmVtbi5W5RI=";
||||||| 213fed0310e3
  cargoHash = "sha256-Jex9im+vyLPjWtsuh0gpd6iILWICCE5jSzMXU/Oh3rw=";
=======
  cargoHash = "sha256-gT1pHDYwqVeZ0epGX8v3+B4o6y8jO21rUyz1rLD3eCY=";
>>>>>>> master

  nativeInstallCheckInputs = [ versionCheckHook ];

  doInstallCheck = true;

  meta = {
    description = "Automatically update system timezone based on location";
    homepage = "https://github.com/maxbrunet/automatic-timezoned";
    changelog = "https://github.com/maxbrunet/automatic-timezoned/blob/v${finalAttrs.version}/CHANGELOG.md";
    license = lib.licenses.gpl3;
    maintainers = [ lib.maintainers.maxbrunet ];
    platforms = lib.platforms.linux;
    mainProgram = "automatic-timezoned";
  };
})
