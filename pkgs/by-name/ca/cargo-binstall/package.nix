{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  bzip2,
  xz,
  zstd,
  versionCheckHook,
}:

rustPlatform.buildRustPackage rec {
  pname = "cargo-binstall";
<<<<<<< HEAD
  version = "1.16.3";
||||||| 213fed0310e3
  version = "1.16.1";
=======
  version = "1.16.7";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "cargo-bins";
    repo = "cargo-binstall";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-FZWBpt8QtHgPLrgck/2Yhq6hYwwP7ZLjCyA01+Jqk8M=";
||||||| 213fed0310e3
    hash = "sha256-NqpYd/K95yTxT5WFTUURk3eS7aV4FY9J7VZCqKQBHNg=";
=======
    hash = "sha256-0r7QEGwuIh2mquKFqcf3VjvilhVz25Xpr2rJPQp504E=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-ntW5oenx80BL51qWgqkXuLebJsBCRsyl/sevh0Hi/K0=";
||||||| 213fed0310e3
  cargoHash = "sha256-lFK89J7GNqU5tcNdse7LWYdUj5y30Vkowv1/o1SjwZ4=";
=======
  cargoHash = "sha256-ZJCIjQm/vbO1Voji143HXT3BwlXRtFq4rFNRUguwouA=";
>>>>>>> master

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    bzip2
    xz
    zstd
  ];

  buildNoDefaultFeatures = true;
  buildFeatures = [
    "fancy-no-backtrace"
    "git"
    "pkg-config"
    "rustls"
    "trust-dns"
    "zstd-thin"
  ];

  cargoBuildFlags = [
    "-p"
    "cargo-binstall"
  ];
  cargoTestFlags = [
    "-p"
    "cargo-binstall"
  ];

  checkFlags = [
    # requires internet access
    "--skip=download::test::test_and_extract"
    "--skip=gh_api_client::test::test_gh_api_client_cargo_binstall_no_such_release"
    "--skip=gh_api_client::test::test_gh_api_client_cargo_binstall_v0_20_1"
  ];

  nativeInstallCheckInputs = [ versionCheckHook ];
  doInstallCheck = true;
  versionCheckProgramArg = "-V";

  meta = {
    description = "Tool for installing rust binaries as an alternative to building from source";
    mainProgram = "cargo-binstall";
    homepage = "https://github.com/cargo-bins/cargo-binstall";
    changelog = "https://github.com/cargo-bins/cargo-binstall/releases/tag/v${version}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ mdaniels5757 ];
  };
}
