{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  gtk3,
  glib,
  gobject-introspection,
  gdk-pixbuf,
  libxkbcommon,
  vulkan-loader,
  makeDesktopItem,
  autoPatchelfHook,
  copyDesktopItems,
}:
let
  desc = "Private, polished note-taking platform";
in
rustPlatform.buildRustPackage rec {
  pname = "lockbook-desktop";
<<<<<<< HEAD
  version = "25.12.15";
||||||| 213fed0310e3
  version = "25.11.11";
=======
  version = "26.1.13";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "lockbook";
    repo = "lockbook";
    tag = version;
<<<<<<< HEAD
    hash = "sha256-bpT8xJST/VJvXIqrukv3OM3xD2zvX5ZqzmLG1BKzXyU=";
||||||| 213fed0310e3
    hash = "sha256-MHeNa0MfPOslop9bdA1+5qiY9/r0TXca+UsahgyA34A=";
=======
    hash = "sha256-1+56xdfrRpjhb536vC8kwZ+fyGpQ38wPH7clkApIOUs=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-tcaLIE4Sn1+C9KIqm3f4ycf/FZtO8QQxCg5mof+TH0I=";
||||||| 213fed0310e3
  cargoHash = "sha256-whtucq2mmhp+UZYZS2MJ9jnIg7XOh4zziGD2lO710h8=";
=======
  cargoHash = "sha256-JCWBG8jt8IxMaUfZaC+YnDfYSmpH/Jm1sqvEcHI8aA0=";
>>>>>>> master

  nativeBuildInputs = [
    pkg-config
    autoPatchelfHook
    copyDesktopItems
  ];

  buildInputs = [
    gtk3
    glib
    gobject-introspection
    gdk-pixbuf
    libxkbcommon
  ];

  runtimeDependencies = [
    vulkan-loader
  ];

  doCheck = false; # there are no cli tests
  cargoBuildFlags = [
    "--package"
    "lockbook-linux"
  ];

  desktopItems = makeDesktopItem {
    desktopName = "Lockbook";
    name = "lockbook-desktop";
    comment = desc;
    icon = "lockbook";
    exec = "lockbook-desktop";
    categories = [
      "Office"
      "Documentation"
      "Utility"
    ];
  };

  postInstall = ''
    mv $out/bin/lockbook-linux $out/bin/lockbook-desktop
    install -D public_site/favicon.svg $out/share/icons/hicolor/scalable/apps/lockbook.svg
  '';

  meta = {
    description = desc;
    longDescription = ''
      Write notes, sketch ideas, and store files in one secure place.
      Share seamlessly, keep data synced, and access it on any
      platform—even offline. Lockbook encrypts files so even we
      can’t see them, but don’t take our word for it:
      Lockbook is 100% open-source.
    '';
    homepage = "https://lockbook.net";
    license = lib.licenses.unlicense;
    platforms = lib.platforms.linux;
    changelog = "https://github.com/lockbook/lockbook/releases/tag/${version}";
    maintainers = [ lib.maintainers.parth ];
  };
}
