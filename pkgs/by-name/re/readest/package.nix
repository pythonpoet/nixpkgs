{
  rustPlatform,
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
  cargo-tauri,
  nodejs,
  pkg-config,
  webkitgtk_4_1,
  wrapGAppsHook3,
  fetchFromGitHub,
  gtk3,
  librsvg,
  openssl,
  autoPatchelfHook,
  lib,
  nix-update-script,
  moreutils,
  jq,
  gst_all_1,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "readest";
<<<<<<< HEAD
  version = "0.9.96";
||||||| 213fed0310e3
  version = "0.9.93";
=======
  version = "0.9.97";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "readest";
    repo = "readest";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-3PCdcSF9ocDqHzK9P/FJQwch5u5zVLQ3eDNSGJQGSKw=";
||||||| 213fed0310e3
    hash = "sha256-Yfj7QVjCCIX41xVzYMoaJPQd2zY/zymo2V2nbNUZpO4=";
=======
    hash = "sha256-JrqjOFfO6GGggRhHWq1B/mhcVQgQeFfT51WXlvlFW5Y=";
>>>>>>> master
    fetchSubmodules = true;
  };

  postUnpack = ''
    # pnpm.configHook has to write to ../.., as our sourceRoot is set to apps/readest-app
    chmod -R +w .
  '';

  sourceRoot = "${finalAttrs.src.name}/apps/readest-app";

  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs) pname version src;
    pnpm = pnpm_9;
    fetcherVersion = 1;
<<<<<<< HEAD
    hash = "sha256-Ea/J3W3L8vVDlIRY/szaCfcqunjiFU6yL+e8h4c5UHg=";
||||||| 213fed0310e3
    hash = "sha256-z7eOiaNXUb2wb014MOGAejZc2fgoMTavhJsNQaygFzc=";
=======
    hash = "sha256-Y4GaHo1Jf99F8UhHbNfaAje2tE1QXwbd2upr6eN9qKE=";
>>>>>>> master
  };

  pnpmRoot = "../..";

  cargoHash = "sha256-AwrA0KXLTSUhLxIJHKU1crVxUxImFOKDRStB48mZfcg=";

  cargoRoot = "../..";

  buildAndTestSubdir = "src-tauri";

  postPatch = ''
    substituteInPlace src-tauri/tauri.conf.json \
      --replace-fail '"createUpdaterArtifacts": true' '"createUpdaterArtifacts": false' \
      --replace-fail '"Readest"' '"readest"'
    jq 'del(.plugins."deep-link")' src-tauri/tauri.conf.json | sponge src-tauri/tauri.conf.json
    substituteInPlace src/services/constants.ts \
      --replace-fail "autoCheckUpdates: true" "autoCheckUpdates: false" \
      --replace-fail "telemetryEnabled: true" "telemetryEnabled: false"
  '';

  nativeBuildInputs = [
    cargo-tauri.hook
    nodejs
    pnpmConfigHook
    pnpm_9
    pkg-config
    wrapGAppsHook3
    autoPatchelfHook
    moreutils
    jq
  ];

  buildInputs = [
    webkitgtk_4_1
    gtk3
    librsvg
    openssl
    # TTS
    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    gst_all_1.gst-plugins-good
    gst_all_1.gst-plugins-bad
  ];

  preBuild = ''
    # set up pdfjs and simplecc
    pnpm setup-vendors
  '';

  preFixup = ''
    gappsWrapperArgs+=(
      --set-default WEBKIT_DISABLE_DMABUF_RENDERER 1
    )
  '';

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Modern, feature-rich ebook reader";
    homepage = "https://github.com/readest/readest";
    changelog = "https://github.com/readest/readest/releases/tag/v${finalAttrs.version}";
    mainProgram = "readest";
    license = lib.licenses.agpl3Plus;
    maintainers = with lib.maintainers; [ eljamm ];
    platforms = lib.platforms.linux;
  };
})
