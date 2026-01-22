{
  lib,
  stdenvNoCC,
  fetchzip,
}:

let
  majorVersion = "0";
  minorVersion = "100";
in
stdenvNoCC.mkDerivation {
  pname = "fa_1";
  version = "${majorVersion}.${minorVersion}";

  src = fetchzip {
    url = "https://dotcolon.net/files/fonts/fa_1_${majorVersion}${minorVersion}.zip";
    hash = "sha256-BPJ+wZMYXY/yg5oEgBc5YnswA6A7w6V0gdv+cac0qdc=";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -D -m444 -t $out/share/fonts/opentype $src/*.otf

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://dotcolon.net/font/fa_1/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://dotcolon.net/font/fa_1/";
=======
  meta = {
    homepage = "https://dotcolon.net/font/fa_1/";
>>>>>>> master
    description = "Weighted decorative font";
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [ minijackson ];
    license = lib.licenses.ofl;
  };
}
