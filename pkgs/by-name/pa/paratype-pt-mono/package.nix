{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {
  pname = "paratype-pt-mono";
  version = "1.001";

  src = fetchFromGitHub {
    owner = "google";
    repo = "fonts";
    rev = "a4f3deeca2d7547351ff746f7bf3b51f5528dbcf";
    hash = "sha256-wzm6KzO/arar7VMvm0l0L6gi3CnglmZKSGe7c0i530Q=";
    rootDir = "ofl/ptmono";
  };

  installPhase = ''
    runHook preInstall

    install -Dm644 *.ttf -t $out/share/fonts/truetype

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://www.paratype.ru/public/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://www.paratype.ru/public/";
=======
  meta = {
    homepage = "https://www.paratype.ru/catalog/font/pt/pt-mono";
>>>>>>> master
    description = "Open Paratype font";
<<<<<<< HEAD

    license = lib.licenses.paratype;
    # no commercial distribution of the font on its own
    # must rename on modification
    # http://www.paratype.ru/public/pt_openlicense.asp

    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [ raskin ];
||||||| 213fed0310e3

    license = lib.licenses.paratype;
    # no commercial distribution of the font on its own
    # must rename on modification
    # http://www.paratype.ru/public/pt_openlicense.asp

    platforms = platforms.all;
    maintainers = with maintainers; [ raskin ];
=======
    license = lib.licenses.ofl;
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [
      raskin
      pancaek
    ];
>>>>>>> master
  };
}
