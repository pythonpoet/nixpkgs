{
  lib,
  stdenvNoCC,
  fetchzip,
}:

let
  majorVersion = "0";
  minorVersion = "200";
in
stdenvNoCC.mkDerivation {
  pname = "ferrum";
  version = "${majorVersion}.${minorVersion}";

  src = fetchzip {
    url = "https://dotcolon.net/files/fonts/ferrum_${majorVersion}${minorVersion}.zip";
    hash = "sha256-NDJwgFWZgyhMkGRWlY55l2omEw6ju3e3dHCEsWNzQIc=";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -D -m444 -t $out/share/fonts/opentype $src/*.otf

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://dotcolon.net/font/ferrum/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://dotcolon.net/font/ferrum/";
=======
  meta = {
    homepage = "https://dotcolon.net/font/ferrum/";
>>>>>>> master
    description = "Decorative font";
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [
      minijackson
    ];
    license = lib.licenses.cc0;
  };
}
