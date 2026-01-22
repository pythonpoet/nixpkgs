{
  lib,
  stdenv,
  python3,
  clang_20,
  buildNpmPackage,
  fetchFromGitHub,
}:

buildNpmPackage (finalAttrs: {
  pname = "nest-cli";
<<<<<<< HEAD
  version = "11.0.14";
||||||| 213fed0310e3
  version = "11.0.11";
=======
  version = "11.0.16";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "nestjs";
    repo = "nest-cli";
<<<<<<< HEAD
    tag = version;
    hash = "sha256-FvZRqQ/wDjEBhug99MZa/ZKcQXCF3I8fXom8hi2AQm4=";
||||||| 213fed0310e3
    tag = version;
    hash = "sha256-A/R0y1NAKR85TrOt8DJaqZ8gMyGfrTc6T7dvzN0T8do=";
=======
    tag = finalAttrs.version;
    hash = "sha256-naVDl3fjjPdrZhUynoy98ggVIDlmIVgvrEYxdNvwD1Y=";
>>>>>>> master
  };

<<<<<<< HEAD
  npmDepsHash = "sha256-KnvcJqTSiW9pCt1MhwsTJmmmvwgtVK5hoLAs/B709MI=";
||||||| 213fed0310e3
  npmDepsHash = "sha256-+QGeOUIF36CLGUGi7QUEM/UE/kvpW4ZucjSFAXZbo4M=";
=======
  npmDepsHash = "sha256-eLytaWABoJTFBnkdqt/rIrgeI4Z2gPpUBL/bt6UIduQ=";
>>>>>>> master
  npmFlags = [ "--legacy-peer-deps" ];

  env = {
    npm_config_build_from_source = true;
  };

  nativeBuildInputs = [
    python3
  ]
  ++ lib.optionals (stdenv.hostPlatform.isDarwin && stdenv.hostPlatform.isAarch64) [ clang_20 ]; # clang_21 breaks gyp builds

  meta = {
    changelog = "https://github.com/nestjs/nest-cli/releases/tag/${finalAttrs.version}";
    description = "CLI tool for Nest applications";
    downloadPage = "https://github.com/nestjs/nest-cli";
    homepage = "https://nestjs.com";
    license = lib.licenses.mit;
    mainProgram = "nest";
    maintainers = with lib.maintainers; [
      ehllie
      phanirithvij
    ];
  };
})
