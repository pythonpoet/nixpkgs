{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
}:

stdenvNoCC.mkDerivation {
  pname = "paratype-pt-serif";
  version = "1.000";

  src = fetchFromGitHub {
    owner = "google";
    repo = "fonts";
    rev = "a4f3deeca2d7547351ff746f7bf3b51f5528dbcf";
    hash = "sha256-HpA4r5VqAVtPFY9ltRUeZERNfyFRkAvwununoDF+5mk=";
    rootDir = "ofl/ptserif";
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
    homepage = "https://www.paratype.ru/catalog/font/pt/pt-serif";
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
