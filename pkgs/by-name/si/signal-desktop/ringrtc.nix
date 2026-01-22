{
  rustPlatform,
  lib,
  fetchFromGitHub,
  cmake,
  protobuf,
  webrtc,
  pkg-config,
  cubeb,
}:
let
  cubeb' = cubeb.override {
    alsaSupport = false;
    pulseSupport = true;
    jackSupport = false;
    sndioSupport = false;
    enableShared = false;
  };
in
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "ringrtc";
<<<<<<< HEAD
  version = "2.60.7";
||||||| 213fed0310e3
  version = "2.59.4";
=======
  version = "2.61.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "signalapp";
    repo = "ringrtc";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-tTfWAnY7I1Gch/tRr4o7NhoZhZ5+jGoZ1BWgAYl0a+I=";
||||||| 213fed0310e3
    hash = "sha256-Yj2ARjQsEDoempZmX+N4whhyTiLxDPR6Y/qeeku9GOQ=";
=======
    hash = "sha256-84QqCfz+NKVLr2FAEDSFAvCm4RhHhq+174M2rxD/D0s=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-h44LLxKDKBVfBMVdVUtlQdct+sFK553rRoOAXsSYqIM=";
||||||| 213fed0310e3
  cargoHash = "sha256-b17tO22CtVl4JK0ABD7h+JyyYwLOK1VTKTSKIGim2yQ=";
=======
  cargoHash = "sha256-LpYjNXc/HzV3OYSIyCxDTlL3UZYbOiRkPCBeIqW2hB8=";
>>>>>>> master

  preConfigure = ''
    # Check for matching webrtc version
    grep 'webrtc.version=${webrtc.version}' config/version.properties
  '';

  cargoBuildFlags = [
    "-p"
    "ringrtc"
    "--features"
    "electron"
  ];
  doCheck = false;

  env = {
    LIBCUBEB_SYS_USE_PKG_CONFIG = 1;
    LIBCUBEB_STATIC = 1;
  };

  nativeBuildInputs = [
    protobuf
    cmake
    pkg-config
  ];
  buildInputs = [
    webrtc
    cubeb'
  ]
  # Workaround for https://github.com/NixOS/nixpkgs/pull/394607
  ++ cubeb'.buildInputs;

  meta = {
    homepage = "https://github.com/signalapp/ringrtc";
    description = "RingRTC library used by Signal";
    license = lib.licenses.agpl3Only;
    platforms = lib.platforms.unix;
  };
})
