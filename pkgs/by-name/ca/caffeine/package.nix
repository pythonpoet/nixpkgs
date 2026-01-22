{
  lib,
  stdenvNoCC,
  fetchurl,
  undmg,
}:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "caffeine";
  version = "1.1.4";

  src = fetchurl {
    url = "https://github.com/IntelliScape/caffeine/releases/download/${finalAttrs.version}/Caffeine.dmg";
    hash = "sha256-GtNMMpmgyGaHPE/rQyw+ERhjda229DxfSBrp1G0G1yM=";
  };

  sourceRoot = ".";

  nativeBuildInputs = [ undmg ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/Applications
    cp -r *.app $out/Applications

    runHook postInstall
  '';

  meta = {
    description = "Don't let your Mac fall asleep";
    homepage = "https://intelliscapesolutions.com/apps/caffeine";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ emilytrau ];
    platforms = [ "x86_64-darwin" ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ emilytrau ];
    platforms = [ "x86_64-darwin" ];
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ emilytrau ];
    platforms = [
      "x86_64-darwin"
      "aarch64-darwin"
    ];
>>>>>>> master
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
  };
})
