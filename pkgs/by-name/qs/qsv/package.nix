{
  stdenv,
  fetchFromGitHub,
  file,
  lib,
  pkg-config,
  rustPlatform,
  sqlite,
  zstd,
  cmake,
  python3,
  wayland,
  withPolars ? true,
  withPython ? stdenv.buildPlatform == stdenv.hostPlatform,
  withUi ? true,
  buildFeatures ?
    # enable all features except self_update by default
<<<<<<< HEAD
    # https://github.com/dathere/qsv/blob/10.0.0/Cargo.toml#L370
||||||| 213fed0310e3
    # https://github.com/dathere/qsv/blob/9.1.0/Cargo.toml#L370
=======
    # https://github.com/dathere/qsv/blob/11.0.2/Cargo.toml#L370
>>>>>>> master
    [
      "apply"
      "feature_capable"
      "fetch"
      "foreach"
      "geocode"
      "luau"
      "to"
    ]
    ++ lib.optional withPolars "polars"
    ++ lib.optional withPython "python"
    ++ lib.optional withUi "ui",
  mainProgram ? "qsv",
}:

let
  pname = "qsv";
<<<<<<< HEAD
  version = "10.0.0";
||||||| 213fed0310e3
  version = "9.1.0";
=======
  version = "11.0.2";
>>>>>>> master
in
rustPlatform.buildRustPackage {
  inherit pname version buildFeatures;

  src = fetchFromGitHub {
    owner = "dathere";
    repo = "qsv";
    rev = version;
<<<<<<< HEAD
    hash = "sha256-Jo2pC+zs3wQAaeQzg6MLySVtI0bB7hLczT62Xpb4L14=";
||||||| 213fed0310e3
    hash = "sha256-zgPC6mLPGVLmMi45MwxO8k650tQl87pfwWgY1cHkmyY=";
=======
    hash = "sha256-EuNDwzO4tVjJUz8mXI0fDczoPLD89zmbSyfFI8ZrgwU=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-05jJslguUFLZtugozv/jn7CDie47WnvrFnjC3SUYxxo=";
||||||| 213fed0310e3
  cargoHash = "sha256-nTNB+LkqwLie25GKByG5sOA/BFvQddJzPY8Dslvb2hg=";
=======
  cargoHash = "sha256-l8hkDr3CtpyXWDTS8oje6W0iu5O28j4rLIXprxTEwHc=";
>>>>>>> master

  buildInputs = [
    file
    sqlite
    zstd
  ]
  ++ lib.optional (lib.elem "ui" buildFeatures && stdenv.hostPlatform.isLinux) wayland;

  nativeBuildInputs = [
    pkg-config
    rustPlatform.bindgenHook
    cmake
  ]
  ++ lib.optional (lib.elem "python" buildFeatures) python3;

  doCheck = false;

  env = {
    ZSTD_SYS_USE_PKG_CONFIG = true;
  };

  meta = {
    description = "CSVs sliced, diced & analyzed";
    homepage = "https://github.com/dathere/qsv";
    changelog = "https://github.com/dathere/qsv/blob/${version}/CHANGELOG.md";
    license = with lib.licenses; [
      mit
      # or
      unlicense
    ];
    inherit mainProgram;
    maintainers = with lib.maintainers; [
      detroyejr
      misuzu
    ];
  };
}
