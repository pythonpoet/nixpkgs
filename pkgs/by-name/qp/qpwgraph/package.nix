{
  lib,
  stdenv,
  fetchFromGitLab,
  cmake,
  pkg-config,
  alsa-lib,
  pipewire,
  kdePackages,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "qpwgraph";
<<<<<<< HEAD
  version = "0.9.7";
||||||| 213fed0310e3
  version = "0.9.6";
=======
  version = "0.9.8";
>>>>>>> master

  src = fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "rncbc";
    repo = "qpwgraph";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    sha256 = "sha256-sd97sIne8tigCDFMnEv0ruM86NfiJZoJ+jsDv3VSdsg=";
||||||| 213fed0310e3
    sha256 = "sha256-zhp6Mkb8iQF8tGXkYu+lgbMUNN/fk/gWBhzeDS4myJ0=";
=======
    sha256 = "sha256-fbkRSM4HFH1f/qZgRmEz7q5kvt2YAKWu/FX2GOXHhbQ=";
>>>>>>> master
  };

  nativeBuildInputs = [
    cmake
    pkg-config
    kdePackages.wrapQtAppsHook
  ];

  buildInputs = [
    kdePackages.qtbase
    kdePackages.qtsvg
    kdePackages.qtwayland
    alsa-lib
    pipewire
  ];

  cmakeFlags = [ "-DCONFIG_WAYLAND=ON" ];

  meta = {
    description = "Qt graph manager for PipeWire, similar to QjackCtl";
    longDescription = ''
      qpwgraph is a graph manager dedicated for PipeWire,
      using the Qt C++ framework, based and pretty much like
      the same of QjackCtl.
    '';
    homepage = "https://gitlab.freedesktop.org/rncbc/qpwgraph";
    license = lib.licenses.gpl2Plus;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [
      kanashimia
      exi
      Scrumplex
      matthiasbeyer
    ];
    mainProgram = "qpwgraph";
  };
})
