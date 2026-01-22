{
  lib,
  stdenv,
  fetchFromGitHub,
  autoconf-archive,
  autoreconfHook,
  pkg-config,
  gettext,
  glib,
  gobject-introspection,
  mate-common,
  python3,
  gitUpdater,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "mate-menus";
  version = "1.28.1";

<<<<<<< HEAD
  src = fetchFromGitHub {
    owner = "mate-desktop";
    repo = "mate-menus";
    tag = "v${version}";
    hash = "sha256-GAc9DPsXdswmyNKlbY6cyHBWO2OSKCBygtzttNHN/p4=";
||||||| 213fed0310e3
  src = fetchurl {
    url = "https://pub.mate-desktop.org/releases/${lib.versions.majorMinor version}/${pname}-${version}.tar.xz";
    sha256 = "z0DHXH1vCq0dSWmCj8YgJcYiK8aoTwu51urX5FlwUI0=";
=======
  src = fetchFromGitHub {
    owner = "mate-desktop";
    repo = "mate-menus";
    tag = "v${finalAttrs.version}";
    hash = "sha256-GAc9DPsXdswmyNKlbY6cyHBWO2OSKCBygtzttNHN/p4=";
>>>>>>> master
  };
  nativeBuildInputs = [
    autoconf-archive
    autoreconfHook
    pkg-config
    gettext
    gobject-introspection
    mate-common # mate-common.m4 macros
  ];

  buildInputs = [
    glib
    python3
  ];

  makeFlags = [
    "INTROSPECTION_GIRDIR=$(out)/share/gir-1.0/"
    "INTROSPECTION_TYPELIBDIR=$(out)/lib/girepository-1.0"
  ];

  enableParallelBuilding = true;

  passthru.updateScript = gitUpdater {
    url = "https://git.mate-desktop.org/mate-menus";
    odd-unstable = true;
    rev-prefix = "v";
  };

  meta = {
    broken = stdenv.hostPlatform.isDarwin;
    description = "Menu system for MATE";
    homepage = "https://github.com/mate-desktop/mate-menus";
    license = with lib.licenses; [
      gpl2Plus
      lgpl2Plus
    ];
    platforms = lib.platforms.unix;
    teams = [ lib.teams.mate ];
  };
})
