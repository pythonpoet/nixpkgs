{
  lib,
  stdenv,
  fetchFromGitHub,
  rustPlatform,
  meson,
  ninja,
  pkg-config,
  cargo,
  rustc,
  wrapGAppsHook4,
  blueprint-compiler,
  desktop-file-utils,
  appstream,
  gtk4,
  libadwaita,
  webkitgtk_6_0,
  glib-networking,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "karere";
<<<<<<< HEAD
  version = "1.1.0";
||||||| 213fed0310e3
  version = "1.0.3";
=======
  version = "2.3.2";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "tobagin";
    repo = "karere";
<<<<<<< HEAD
    rev = "v${finalAttrs.version}";
    hash = "sha256-4jV2vE7KtdpA9qjKR4xj/w6g1WZD/l8ezRtuFyzJtZ8=";
||||||| 213fed0310e3
    rev = "v${finalAttrs.version}";
    hash = "sha256-QpKKUP/Lp0nWI+h67Uc2f+4G3LG593hLB7b7IMinThI=";
=======
    tag = "v${finalAttrs.version}";
    hash = "sha256-FtGT2GXBHmXHLxRW+J2735+Z+++xbzyNAjyfXPewZ8Y=";
  };

  cargoDeps = rustPlatform.fetchCargoVendor {
    inherit (finalAttrs) pname version src;
    hash = "sha256-NqE9x3mBfHt1bhSpxm+DurX61oJDxt3IibTYFi/lqO8=";
>>>>>>> master
  };

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    cargo
    rustc
    rustPlatform.cargoSetupHook
    wrapGAppsHook4
    blueprint-compiler
    desktop-file-utils
    appstream
  ];

  buildInputs = [
    gtk4
    libadwaita
    webkitgtk_6_0
    glib-networking
  ];

  meta = {
    description = "Gtk4 Whatsapp client";
    homepage = "https://github.com/tobagin/karere";
    changelog = "https://github.com/tobagin/karere/blob/${finalAttrs.src.rev}/CHANGELOG.md";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [
      marcel
      aleksana
    ];
    mainProgram = "karere";
  };
})
