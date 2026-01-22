{
  lib,
  stdenv,
  fetchFromGitLab,
  blueprint-compiler,
  cargo,
  desktop-file-utils,
  meson,
  ninja,
  pkg-config,
  rustPlatform,
  rustc,
  wrapGAppsHook4,
  cairo,
  dbus,
  gdk-pixbuf,
  glib,
  gtk4,
  libadwaita,
  openssl,
  pango,
  nix-update-script,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "impression";
<<<<<<< HEAD
  version = "3.5.4";
||||||| 213fed0310e3
  version = "3.5.3";
=======
  version = "3.6.0";
>>>>>>> master

  src = fetchFromGitLab {
    owner = "adhami3310";
    repo = "Impression";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-jOQ3WLsbL/ODTfTPjb8wbd2QDER2ubtan2jL0nw/rk4=";
||||||| 213fed0310e3
    hash = "sha256-kS2uWYwYNdgHF5NBPqvFlkFvnv7VTTqWG5Y2g282d24=";
=======
    hash = "sha256-jxfleGDIetTxh0YltKYz2KYE00opwZb+rnaR76beGWA=";
>>>>>>> master
  };

  cargoDeps = rustPlatform.fetchCargoVendor {
    inherit (finalAttrs) pname version src;
<<<<<<< HEAD
    hash = "sha256-uUW8xeqQCav7YP/FScySZ2z9jWatkgKw8bPpwX0TOVw=";
||||||| 213fed0310e3
    hash = "sha256-j1fSzEGgKVp5iPvU+yoXFHrG7E6HsaNWk0Ofpr0SHzQ=";
=======
    hash = "sha256-RR27VE1/8jG2HgeWtIwGsF9HUlI3Kky9J4X6kZnA+kw=";
>>>>>>> master
  };

  nativeBuildInputs = [
    blueprint-compiler
    cargo
    desktop-file-utils
    meson
    ninja
    pkg-config
    rustPlatform.cargoSetupHook
    rustc
    wrapGAppsHook4
  ];

  buildInputs = [
    cairo
    dbus
    gdk-pixbuf
    glib
    gtk4
    libadwaita
    openssl
    pango
  ];

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Straight-forward and modern application to create bootable drives";
    homepage = "https://gitlab.com/adhami3310/Impression";
    changelog = "https://gitlab.com/adhami3310/Impression/-/releases/v${finalAttrs.version}";
    license = lib.licenses.gpl3Only;
    mainProgram = "impression";
    maintainers = with lib.maintainers; [ dotlambda ];
    teams = [ lib.teams.gnome-circle ];
    platforms = lib.platforms.linux;
  };
})
