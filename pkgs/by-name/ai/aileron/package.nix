{
  lib,
  stdenvNoCC,
  fetchzip,
}:

let
  majorVersion = "0";
  minorVersion = "102";
in
stdenvNoCC.mkDerivation {
  pname = "aileron";
  version = "${majorVersion}.${minorVersion}";

  src = fetchzip {
    url = "https://dotcolon.net/files/fonts/aileron_${majorVersion}${minorVersion}.zip";
    hash = "sha256-Ht48gwJZrn0djo1yl6jHZ4+0b710FVwStiC1Zk5YXME=";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -D -m444 -t $out/share/fonts/opentype $src/*.otf

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://dotcolon.net/font/aileron/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://dotcolon.net/font/aileron/";
=======
  meta = {
    homepage = "https://dotcolon.net/font/aileron/";
>>>>>>> master
    description = "Helvetica font in nine weights";
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [
      minijackson
    ];
    license = lib.licenses.cc0;
  };
}
