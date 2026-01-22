{
  fetchurl,
  lib,
  stdenv,
  gtk3,
  pkg-config,
  libofx,
  intltool,
  wrapGAppsHook3,
  libsoup_3,
  adwaita-icon-theme,
}:

stdenv.mkDerivation rec {
  pname = "homebank";
<<<<<<< HEAD
  version = "5.9.6";
||||||| 213fed0310e3
  version = "5.9.5";
=======
  version = "5.9.7";
>>>>>>> master
  src = fetchurl {
    url = "https://www.gethomebank.org/public/sources/homebank-${version}.tar.gz";
<<<<<<< HEAD
    hash = "sha256-8DIL/gTysY/e1DcuuJ5qY6vXUBY4uUWNoSzUaCQ+t3o=";
||||||| 213fed0310e3
    hash = "sha256-/2yLD22kERM+KbhI6R9I/biN5ArQLLogqIQJMKPn7UM=";
=======
    hash = "sha256-K4/fUSQpow7XpFfPWvR2dWwM/dyfznYA2rlcfwO+JuQ=";
>>>>>>> master
  };

  nativeBuildInputs = [
    pkg-config
    wrapGAppsHook3
    intltool
  ];
  buildInputs = [
    gtk3
    libofx
    libsoup_3
    adwaita-icon-theme
  ];

  meta = {
    description = "Free, easy, personal accounting for everyone";
    mainProgram = "homebank";
    homepage = "https://www.gethomebank.org";
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [
      pSub
      frlan
    ];
    platforms = lib.platforms.linux ++ lib.platforms.darwin;
  };
}
