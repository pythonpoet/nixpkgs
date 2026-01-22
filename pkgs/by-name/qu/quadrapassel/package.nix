{
  stdenv,
  lib,
  fetchurl,
  pkg-config,
  gtk4,
  libadwaita,
  libgee,
  pango,
  gnome,
  gdk-pixbuf,
  librsvg,
  gsound,
  libmanette,
  blueprint-compiler,
  wrapGAppsHook4,
  meson,
  ninja,
  vala,
  desktop-file-utils,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "quadrapassel";
<<<<<<< HEAD
  version = "49.2.1";
||||||| 213fed0310e3
  version = "49.1";
=======
  version = "49.2.3";
>>>>>>> master

  src = fetchurl {
    url = "mirror://gnome/sources/quadrapassel/${lib.versions.major finalAttrs.version}/quadrapassel-${finalAttrs.version}.tar.xz";
<<<<<<< HEAD
    hash = "sha256-pTIKb47ghWKkNsq6TjT3rgQP7cjXL76iJ/cCXZPExrk=";
||||||| 213fed0310e3
    hash = "sha256-ttejtndabcTxmAvZN4MkZmF6iX7KoQmPOixZvhdhZQk=";
=======
    hash = "sha256-+ecxK/oPg1pOC/U181ax6VNxlIQ+Xe/1YR9z3C3b85k=";
>>>>>>> master
  };

  nativeBuildInputs = [
    meson
    ninja
    vala
    desktop-file-utils
    pkg-config
    blueprint-compiler
    wrapGAppsHook4
  ];

  buildInputs = [
    gtk4
    libadwaita
    libgee
    pango
    gdk-pixbuf
    librsvg
    libmanette
    gsound
  ];

  passthru = {
    updateScript = gnome.updateScript {
      packageName = "quadrapassel";
    };
  };

  meta = {
    description = "Classic falling-block game, Tetris";
    mainProgram = "quadrapassel";
    homepage = "https://gitlab.gnome.org/GNOME/quadrapassel";
    changelog = "https://gitlab.gnome.org/GNOME/quadrapassel/-/blob/${finalAttrs.version}/NEWS?ref_type=tags";
    license = lib.licenses.gpl2Plus;
    teams = [ lib.teams.gnome ];
    platforms = lib.platforms.linux;
  };
})
