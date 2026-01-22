{
  lib,
  buildGoModule,
  fetchFromGitHub,
  stdenvNoCC,
  nixosTests,
  nix-update-script,
  nodejs,
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
  typescript,
  versionCheckHook,
}:
buildGoModule (finalAttrs: {
  pname = "qui";
<<<<<<< HEAD
  version = "1.11.0";
||||||| 213fed0310e3
  version = "1.7.0";
=======
  version = "1.12.0";
>>>>>>> master
  src = fetchFromGitHub {
    owner = "autobrr";
    repo = "qui";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-ioyFTTJu2B0m+U+GgY/VOIesAZLQI3mRZ5ZBh77emFY=";
||||||| 213fed0310e3
    hash = "sha256-CbPdngskDCAAhmsj5DPdnviZSWM0bO13Pbe7wRwaNaw=";
=======
    hash = "sha256-j0d8aJ9qcK3+/g+qNBsH84U5zQho6bl5TdzHQRQsabs=";
>>>>>>> master
  };

  qui-web = stdenvNoCC.mkDerivation (finalAttrs': {
    pname = "${finalAttrs.pname}-web";
    inherit (finalAttrs) src version;

    nativeBuildInputs = [
      nodejs
      pnpmConfigHook
      pnpm_9
      typescript
    ];

    sourceRoot = "${finalAttrs.src.name}/web";

    pnpmDeps = fetchPnpmDeps {
      inherit (finalAttrs')
        pname
        version
        src
        sourceRoot
        ;
      pnpm = pnpm_9;
      fetcherVersion = 2;
<<<<<<< HEAD
      hash = "sha256-6brOEC1UAxjIZB4pujhA624jKTTxfZQiiz/PzqooPeA=";
||||||| 213fed0310e3
      hash = "sha256-WKoWts+/TGcGy/rFEJN3Qn/vq+gj+Mq+VcTYowEyvus=";
=======
      hash = "sha256-3TAB5StrKBmgit02J7GiMfk6EDl8oiLvcOAnCJ9ian4=";
>>>>>>> master
    };

    postBuild = ''
      pnpm run build
    '';

    installPhase = ''
      cp -r dist $out
    '';
  });

<<<<<<< HEAD
  vendorHash = "sha256-clVC3xPV/vJpWogDs1a977osQgPyhvZ4CRnHnKEZMs0=";
||||||| 213fed0310e3
  vendorHash = "sha256-rmUEFX8UzxEN7XaJ8Zj+kj3z1pwLkq3FTYzbPWnifW0=";
=======
  vendorHash = "sha256-hdgTC/oA2ZUc7mqA3v1vunXcu+aeKGw2fEUBBeerCeg=";
>>>>>>> master

  preBuild = ''
    cp -r ${finalAttrs.qui-web}/* web/dist
  '';

  ldflags = [
    "-X github.com/autobrr/qui/internal/buildinfo.Version=${finalAttrs.version}"
    "-X main.PolarOrgID="
  ];

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  versionCheckProgramArg = "version";
  doInstallCheck = true;

  passthru = {
    updateScript = nix-update-script {
      extraArgs = [
        "--subpackage"
        "qui-web"
      ];
    };
    tests.testService = nixosTests.qui;
  };

  meta = {
    description = "Modern alternative webUI for qBittorrent, with multi-instance support";
    license = lib.licenses.gpl2Plus;
    homepage = "https://github.com/autobrr/qui";
    changelog = "https://github.com/autobrr/qui/releases/tag/v${finalAttrs.version}";
    maintainers = with lib.maintainers; [
      pta2002
      tmarkus
    ];
    mainProgram = "qui";
    platforms = lib.platforms.unix;
  };
})
