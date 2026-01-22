{
  lib,
  fetchurl,
  stdenv,
  dpkg,
  autoPatchelfHook,
  cairo,
  gdk-pixbuf,
  webkitgtk_4_1,
  gtk3,
}:

stdenv.mkDerivation (finalAttrs: {
<<<<<<< HEAD
  pname = "eigenwallet";
  version = "3.6.1";
||||||| 213fed0310e3
  name = "eigenwallet";
  version = "3.3.6";
=======
  pname = "eigenwallet";
  version = "3.6.4";
>>>>>>> master

  src = fetchurl {
    url = "https://github.com/eigenwallet/core/releases/download/${finalAttrs.version}/eigenwallet_${finalAttrs.version}_amd64.deb";
<<<<<<< HEAD
    hash = "sha256-L0JNKbirnZSVNNhEzSpwq5JstfpSGSo5E83zmxoOuXU=";
||||||| 213fed0310e3
    hash = "sha256-4Z7tfhpX6E7i1dov8j0czG+aDDrhUN1EtxOq2SOqILQ=";
=======
    hash = "sha256-OvbkIOAQBwpZnFU1nT72/ePC6IG9t4CNjQJOhCoGxYw=";
>>>>>>> master
  };

  nativeBuildInputs = [
    dpkg
    autoPatchelfHook
  ];

  buildInputs = [
    cairo
    gdk-pixbuf
    webkitgtk_4_1
    gtk3
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out
    mv {usr/bin,usr/share} $out

    runHook postInstall
  '';

  meta = {
    description = "Protocol and desktop application for swapping Monero and Bitcoin";
    homepage = "https://eigenwallet.org";
    maintainers = with lib.maintainers; [ JacoMalan1 ];
    license = lib.licenses.gpl3Only;
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
    platforms = [ "x86_64-linux" ];
    mainProgram = "unstoppableswap-gui-rs";
  };
})
