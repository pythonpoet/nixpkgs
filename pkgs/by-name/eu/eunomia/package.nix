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
  pname = "eunomia";
  version = "${majorVersion}.${minorVersion}";

  src = fetchzip {
    url = "https://dotcolon.net/files/fonts/eunomia_${majorVersion}${minorVersion}.zip";
    hash = "sha256-Rd2EakaTWjzoEV00tHTgg/bXgJUFfPjCyQUWi7QhFG4=";
    stripRoot = false;
  };

  installPhase = ''
    runHook preInstall

    install -D -m444 -t $out/share/fonts/opentype $src/*.otf

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://dotcolon.net/font/eunomia/";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://dotcolon.net/font/eunomia/";
=======
  meta = {
    homepage = "https://dotcolon.net/font/eunomia/";
>>>>>>> master
    description = "Futuristic decorative font";
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [
      minijackson
    ];
    license = lib.licenses.ofl;
  };
}
