{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  zstd,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-deny";
<<<<<<< HEAD
  version = "0.18.6";
||||||| 213fed0310e3
  version = "0.18.5";
=======
  version = "0.19.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "EmbarkStudios";
    repo = "cargo-deny";
<<<<<<< HEAD
    tag = finalAttrs.version;
    hash = "sha256-w3SFU0FSX7nmqzyxey0erJfq8YsFEEukfNhDg5g0I04=";
||||||| 213fed0310e3
    tag = version;
    hash = "sha256-FYVMeq/728uXayGbDKVK2kZNkf9tdXET+uEorJ6WNto=";
=======
    tag = finalAttrs.version;
    hash = "sha256-kDjRP+UXYzsXTrcsPbomtATzDVTSZqXoRXf6qqCGOZw=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-yrVSXrxfJ4vB85rARq6g71AswRMXhn25tfYZqXm1zoo=";
||||||| 213fed0310e3
  cargoHash = "sha256-QfylAFybghBJzxgtrKIPGz/6EM1DlNJ/uJIEtMXpTbo=";
=======
  cargoHash = "sha256-Lu1KhQmsQGvzgozFTcv9/hY3ZXOuaxkv0I+QPmAdZBU=";
>>>>>>> master

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    zstd
  ];

  env = {
    ZSTD_SYS_USE_PKG_CONFIG = true;
  };

  # tests require internet access
  doCheck = false;

  meta = {
    description = "Cargo plugin for linting your dependencies";
    mainProgram = "cargo-deny";
    homepage = "https://github.com/EmbarkStudios/cargo-deny";
    changelog = "https://github.com/EmbarkStudios/cargo-deny/blob/${finalAttrs.version}/CHANGELOG.md";
    license = with lib.licenses; [
      asl20 # or
      mit
    ];
    maintainers = with lib.maintainers; [
      matthiasbeyer
      jk
      chrjabs
    ];
  };
})
