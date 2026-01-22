{
  lib,
  stdenv,
<<<<<<< HEAD
  pnpm_10,
  fetchPnpmDeps,
  pnpmConfigHook,
  nodejs_22,
||||||| 213fed0310e3
  pnpm_10,
  nodejs_22,
=======
  pnpm,
  fetchPnpmDeps,
  pnpmConfigHook,
  nodejs,
>>>>>>> master
  fetchFromGitHub,
  nix-update-script,
  discord,
  discord-ptb,
  discord-canary,
  discord-development,
}:
let
  pnpm' = pnpm_10.override { nodejs = nodejs_22; };
in
stdenv.mkDerivation (finalAttrs: {
  pname = "moonlight";
  version = "1.3.37";

  src = fetchFromGitHub {
    owner = "moonlight-mod";
    repo = "moonlight";
    tag = "v${finalAttrs.version}";
    hash = "sha256-4cz1icY7i8RFdh/HhG/y6UzR/zkhsp4+G2dplm4g+wo=";
  };

  nativeBuildInputs = [
<<<<<<< HEAD
    nodejs_22
    pnpmConfigHook
    pnpm'
||||||| 213fed0310e3
    nodejs_22
    pnpm_10.configHook
=======
    nodejs
    pnpmConfigHook
    pnpm
>>>>>>> master
  ];

  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs) pname version src;
<<<<<<< HEAD
    pnpm = pnpm';

    fetcherVersion = 2;
    hash = "sha256-PRlgwyePFpFdQRcojGDEC4ESZEGTJf1Ad9EFgm8hmKY=";
||||||| 213fed0310e3

    buildInputs = [ nodejs_22 ];

    fetcherVersion = 2;
    hash = "sha256-PRlgwyePFpFdQRcojGDEC4ESZEGTJf1Ad9EFgm8hmKY=";
=======
    fetcherVersion = 3;
    hash = "sha256-sU0EBSNwpjqyBsvyJim8Qz90dht7xc6f52HaY0sBPds=";
>>>>>>> master
  };

  env = {
    NODE_ENV = "production";
    MOONLIGHT_BRANCH = "stable";
    MOONLIGHT_VERSION = "v${finalAttrs.version} (nixpkgs)";
  };

  patches = [
    ./disable_updates.patch
  ];

  buildPhase = ''
    runHook preBuild

    pnpm run build

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    cp -r dist $out

    runHook postInstall
  '';

  passthru = {
    updateScript = nix-update-script { };
    tests = lib.genAttrs' [ discord discord-ptb discord-canary discord-development ] (
      p: lib.nameValuePair p.pname p.tests.withMoonlight
    );
  };

  meta = {
    description = "Discord client modification, focused on enhancing user and developer experience";
    longDescription = ''
      Moonlight is a ***passion project***—yet another Discord client mod—focused on providing a decent user
      and developer experience. Heavily inspired by hh3 (a private client mod) and the projects before it, namely EndPwn.
      All core code is original or used with permission from their respective authors where not copyleft.
    '';
    homepage = "https://moonlight-mod.github.io";
    downloadPage = "https://moonlight-mod.github.io/using/install/#nix";
    changelog = "https://raw.githubusercontent.com/moonlight-mod/moonlight/refs/tags/v${finalAttrs.version}/CHANGELOG.md";

    license = lib.licenses.lgpl3;
    maintainers = with lib.maintainers; [
      ilys
      FlameFlag
    ];
  };
})
