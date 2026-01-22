{
  lib,
  stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  sassc,
  gnome-shell,
  gnome-themes-extra,
  gtk-engine-murrine,
  gdk-pixbuf,
  librsvg,
}:

stdenv.mkDerivation rec {
  pname = "materia-theme";
  version = "20210322";

  src = fetchFromGitHub {
    owner = "nana-4";
    repo = "materia-theme";
    rev = "v${version}";
    sha256 = "1fsicmcni70jkl4jb3fvh7yv0v9jhb8nwjzdq8vfwn256qyk0xvl";
  };

  nativeBuildInputs = [
    meson
    ninja
    sassc
  ];

  buildInputs = [
    gnome-themes-extra
    gdk-pixbuf
    librsvg
  ];

  propagatedUserEnvPkgs = [ gtk-engine-murrine ];

  mesonFlags = [
    "-Dgnome_shell_version=${lib.versions.majorMinor gnome-shell.version}"
  ];

  postInstall = ''
    rm $out/share/themes/*/COPYING
  '';

  meta = {
    description = "Material Design theme for GNOME/GTK based desktop environments";
    homepage = "https://github.com/nana-4/materia-theme";
<<<<<<< HEAD
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.all;
    maintainers = [ lib.maintainers.mounium ];
||||||| 213fed0310e3
    license = licenses.gpl2Only;
    platforms = platforms.all;
    maintainers = [ maintainers.mounium ];
=======
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.all;
>>>>>>> master
  };
}
