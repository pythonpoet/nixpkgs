{
  lib,
  buildPlatform,
  hostPlatform,
  fetchurl,
  bash,
  tinycc,
  gnumake,
  gnugrep,
  gnused,
}:
let
  # gnutar with musl preserves modify times, allowing make to not try
  # rebuilding pregenerated files
  inherit (import ./common.nix { inherit lib; }) meta;
  pname = "gnutar-musl";
  version = "1.12";

  src = fetchurl {
    url = "mirror://gnu/tar/tar-${version}.tar.gz";
    hash = "sha256-xsN+iIsTbM76uQPFEUn0t71lnWnUrqISRfYQU6V6pgo=";
  };
in
bash.runCommand "${pname}-${version}"
  {
    inherit pname version meta;

    nativeBuildInputs = [
      tinycc.compiler
      gnumake
      gnused
      gnugrep
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
    ungz --file ${src} --output tar.tar
    untar --file tar.tar
    rm tar.tar
    cd tar-${version}

    # Configure
    export CC="tcc -B ${tinycc.libs}/lib"
    export LD=tcc
    export ac_cv_sizeof_unsigned_long=4
    export ac_cv_sizeof_long_long=8
    export ac_cv_header_netdb_h=no
    bash ./configure \
      --prefix=$out \
      --build=${buildPlatform.config} \
      --host=${hostPlatform.config} \
      --disable-dependency-tracking \
      --disable-nls

    # Build
    make AR="tcc -ar"

    # Install
    make install
  ''
