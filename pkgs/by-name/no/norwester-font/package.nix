{
  lib,
  stdenvNoCC,
  fetchzip,
}:

stdenvNoCC.mkDerivation rec {
  pname = "norwester";
  version = "1.2";

  src = fetchzip {
    url = "https://jamiewilson.github.io/norwester/assets/norwester.zip";
    stripRoot = false;
    hash = "sha256-Ak/nobrQE/XYGWs/IhlZlTp74ff+s4adUR6Sht5Yf8g=";
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts/opentype
    cp ${pname}-v${version}/${pname}.otf $out/share/fonts/opentype/

    runHook postInstall
  '';

<<<<<<< HEAD
  meta = {
    homepage = "http://jamiewilson.io/norwester";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "http://jamiewilson.io/norwester";
=======
  meta = {
    homepage = "https://jamiewilson.github.io/norwester/";
>>>>>>> master
    description = "Condensed geometric sans serif by Jamie Wilson";
    license = lib.licenses.ofl;
    platforms = lib.platforms.all;
  };
}
