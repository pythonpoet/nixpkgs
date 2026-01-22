{
  fetchFromGitHub,
  lib,
  libpng,
  nix-update-script,
  stb,
  stdenv,
  testers,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "qoi";
  version = "0-unstable-2025-11-13"; # no upstream version yet.

  src = fetchFromGitHub {
    owner = "phoboslab";
    repo = "qoi";
    rev = "44b233a95eda82fbd2e39a269199b73af0f4c4c3";
    hash = "sha256-W5JG9Nz4NI2KZmUEtxEiGH7oxfAzEIaUyXTbSB25hZw=";
  };

  patches = [
    # https://github.com/phoboslab/qoi/pull/322
    ./add-install-target-and-pc-module.patch
  ];

  outputs = [
    "out"
    "dev"
  ];

  strictDeps = true;
  enableParalleBuilding = true;

  buildInputs = [ libpng ];

  # Don't bloat the header-only output with binaries
  propagatedBuildOutputs = [ ];

  makeFlags = [
    "CFLAGS=-I${lib.getDev stb}/include/stb"
    "PREFIX=${placeholder "dev"}"
    "BINDIR=${placeholder "out"}/bin"
  ];

  passthru = {
    tests.pkg-config = testers.hasPkgConfigModules { package = finalAttrs.finalPackage; };
    updateScript = nix-update-script { extraArgs = [ "--version=branch" ]; };
  };

<<<<<<< HEAD
    # Conversion utility for images->qoi. Not usually needed for development.
    mkdir -p ${placeholder "out"}/bin
    install qoiconv ${placeholder "out"}/bin

    # The actual single-header implementation. Nothing to compile, just install.
    mkdir -p ${placeholder "dev"}/include/
    install qoi.h ${placeholder "dev"}/include

    runHook postInstall
  '';

  meta = {
||||||| 213fed0310e3
    # Conversion utility for images->qoi. Not usually needed for development.
    mkdir -p ${placeholder "out"}/bin
    install qoiconv ${placeholder "out"}/bin

    # The actual single-header implementation. Nothing to compile, just install.
    mkdir -p ${placeholder "dev"}/include/
    install qoi.h ${placeholder "dev"}/include

    runHook postInstall
  '';

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    description = "'Quite OK Image Format' for fast, lossless image compression";
    mainProgram = "qoiconv";
    homepage = "https://qoiformat.org/";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ hzeller ];
    platforms = lib.platforms.all;
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ hzeller ];
    platforms = platforms.all;
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ hzeller ];
    platforms = lib.platforms.all;
    pkgConfigModules = [ "qoi" ];
>>>>>>> master
  };
})
