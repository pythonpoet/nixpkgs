{
  lib,
  stdenv,
  fetchFromGitHub,
  libsForQt5,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "veikk-linux-driver-gui";
  version = "2.0";

  src = fetchFromGitHub {
    owner = "jlam55555";
    repo = "veikk-linux-driver-gui";
    tag = "v${finalAttrs.version}";
    hash = "sha256-ssQ54d+4H0a0FF3BrVlHPrPd7WlBocFLep9KPtPB4Qk=";
  };

  nativeBuildInputs = [
    libsForQt5.qmake
    libsForQt5.wrapQtAppsHook
  ];

  postBuild = ''
    make all clean
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp veikk-linux-driver-gui $out/bin
  '';

  meta = {
    description = "Configuration tool for the VEIKK Linux driver";
    homepage = "https://github.com/jlam55555/veikk-linux-driver-gui/";
<<<<<<< HEAD:pkgs/tools/misc/veikk-linux-driver-gui/default.nix
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [ nicbk ];
||||||| 213fed0310e3:pkgs/tools/misc/veikk-linux-driver-gui/default.nix
    license = licenses.gpl2Only;
    platforms = platforms.linux;
    maintainers = with maintainers; [ nicbk ];
=======
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.linux;
    maintainers = [ lib.maintainers.nicbk ];
>>>>>>> master:pkgs/by-name/ve/veikk-linux-driver-gui/package.nix
    mainProgram = "veikk-linux-driver-gui";
  };
})
