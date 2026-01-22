# Note: this is rakshasa's version of libtorrent, used mainly by rtorrent.
# *Do not* mistake it by libtorrent-rasterbar, used by Deluge, qbitttorent etc.
{
  autoreconfHook,
  cppunit,
  curl,
  fetchFromGitHub,
  lib,
  nix-update-script,
  openssl,
  pkg-config,
  stdenv,
  zlib,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "libtorrent-rakshasa";
<<<<<<< HEAD
  version = "0.16.5";
||||||| 213fed0310e3
  version = "0.16.2";
=======
  version = "0.16.6";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "rakshasa";
    repo = "libtorrent";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-zBMenewDtUyhOAQrIKejiShGWDeIA+7U1heyOKfAjio=";
||||||| 213fed0310e3
    hash = "sha256-eiF5kiKsGXSu40+sISTe2KL+SPLonp9IV3NINdlza48=";
=======
    hash = "sha256-pabtM8nf/x/kn661R9STeX3yaSGAP/JbJQkLffUi+CU=";
>>>>>>> master
  };

  nativeBuildInputs = [
    autoreconfHook
    curl
    pkg-config
  ];

  buildInputs = [
    cppunit
    openssl
    zlib
  ];

  configureFlags = [ "--enable-aligned=yes" ];

  passthru.updateScript = nix-update-script { };

  enableParallelBuilding = true;

  meta = {
    description = "BitTorrent library written in C++ for *nix, with focus on high performance and good code";
    homepage = "https://github.com/rakshasa/libtorrent";
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [
      codyopel
      thiagokokada
    ];
    platforms = lib.platforms.unix;
  };
})
