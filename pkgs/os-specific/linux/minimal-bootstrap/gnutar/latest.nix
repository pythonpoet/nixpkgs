{
  lib,
  buildPlatform,
  hostPlatform,
  fetchurl,
  bash,
  gcc,
  musl,
  binutils,
  gnumake,
  gnused,
  gnugrep,
  gawk,
  gzip,
  gnutarBoot,
}:
let
  inherit (import ./common.nix { inherit lib; }) meta;
  pname = "gnutar";
  version = "1.35";

  src = fetchurl {
    url = "mirror://gnu/tar/tar-${version}.tar.gz";
    hash = "sha256-FNVeMgY+qVJuBX+/Nfyr1TN452l4fv95GcN1WwLStX4=";
  };
in
bash.runCommand "${pname}-${version}"
  {
    inherit pname version meta;

    nativeBuildInputs = [
      gcc
      musl
      binutils
      gnumake
      gnused
      gnugrep
      gawk
      gzip
      gnutarBoot
    ];

    passthru.tests.get-version =
      result:
      bash.runCommand "${pname}-get-version-${version}" { } ''
        ${result}/bin/tar --version
        mkdir $out
      '';
<<<<<<< HEAD

    meta = {
      description = "GNU implementation of the `tar' archiver";
      homepage = "https://www.gnu.org/software/tar";
      license = lib.licenses.gpl3Plus;
      teams = [ lib.teams.minimal-bootstrap ];
      mainProgram = "tar";
      platforms = lib.platforms.unix;
    };
||||||| 213fed0310e3

    meta = with lib; {
      description = "GNU implementation of the `tar' archiver";
      homepage = "https://www.gnu.org/software/tar";
      license = licenses.gpl3Plus;
      teams = [ teams.minimal-bootstrap ];
      mainProgram = "tar";
      platforms = platforms.unix;
    };
=======
>>>>>>> master
  }
  ''
    # Unpack
    tar xzf ${src}
    cd tar-${version}

    # Configure
    bash ./configure \
      --prefix=$out \
      --build=${buildPlatform.config} \
      --host=${hostPlatform.config} \
      --disable-dependency-tracking \
      CC=musl-gcc

    # Build
    make -j $NIX_BUILD_CORES

    # Install
    make -j $NIX_BUILD_CORES install
  ''
