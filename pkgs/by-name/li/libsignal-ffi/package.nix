{
  lib,
  stdenv,
  fetchFromGitHub,
  rustPlatform,
  runCommand,
  xcodebuild,
  protobuf,
  boringssl,
}:
let
  # boring-sys expects the static libraries in build/ instead of lib/
  boringssl-wrapper = runCommand "boringssl-wrapper" { } ''
    mkdir $out
    cd $out
    ln -s ${boringssl.out}/lib build
    ln -s ${boringssl.dev}/include include
  '';
in
rustPlatform.buildRustPackage rec {
  pname = "libsignal-ffi";
  # must match the version used in mautrix-signal
  # see https://github.com/mautrix/signal/issues/401
<<<<<<< HEAD
  version = "0.86.8";
||||||| 213fed0310e3
  version = "0.86.4";
=======
  version = "0.86.12";
>>>>>>> master

  src = fetchFromGitHub {
    fetchSubmodules = true;
    owner = "signalapp";
    repo = "libsignal";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-+GFuwS4y8yr86ETVIjlz/6HocAamASmBOIjkTLtCIag=";
||||||| 213fed0310e3
    hash = "sha256-f2f2AY4PYs+HcaordHAIXHhvyfgZ9D3GrfW5wC06/h4=";
=======
    hash = "sha256-XVq1fvhUF0WqSs1lJRCBRuhOW4idY6Nm21UdX4/6TE8=";
>>>>>>> master
  };

  nativeBuildInputs = [
    protobuf
    rustPlatform.bindgenHook
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [ xcodebuild ];

  env.BORING_BSSL_PATH = "${boringssl-wrapper}";
  env.NIX_LDFLAGS = if stdenv.hostPlatform.isDarwin then "-lc++" else "-lstdc++";

<<<<<<< HEAD
  cargoHash = "sha256-uiMct9ygg1c1rQb6RsM2AoibuKCExPy9P75C7jDX8Cs=";
||||||| 213fed0310e3
  cargoHash = "sha256-JKFO/+t++3WEsqnCEsI/S4wpNUFiCIIudiRbjrT/i6k=";
=======
  cargoHash = "sha256-vat7vjL9HDY/m7CLUJNpU3NZ79nCVHxLO5tEtaEDBnE=";
>>>>>>> master

  cargoBuildFlags = [
    "-p"
    "libsignal-ffi"
  ];

  meta = {
    description = "C ABI library which exposes Signal protocol logic";
    homepage = "https://github.com/signalapp/libsignal";
    license = lib.licenses.agpl3Plus;
    maintainers = with lib.maintainers; [
      pentane
      SchweGELBin
    ];
  };
}
