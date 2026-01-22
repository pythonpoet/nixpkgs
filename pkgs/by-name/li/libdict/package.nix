{
  stdenv,
  lib,
  fetchFromGitHub,
  cmake,
  cunit,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "libdict";
  version = "1.0.5";

  src = fetchFromGitHub {
    owner = "rtbrick";
    repo = "libdict";
    rev = finalAttrs.version;
    hash = "sha256-604escyV5MVuYggs1awIrorCrdXSUj3IhjwXV2QdDMU=";
  };

  nativeBuildInputs = [
    cmake
  ];
  buildInputs = [
    cunit
  ];

  cmakeFlags = [
    "-DLIBDICT_TESTS=${if finalAttrs.finalPackage.doCheck then "ON" else "OFF"}"
    "-DLIBDICT_SHARED=${if stdenv.hostPlatform.isStatic then "OFF" else "ON"}"
  ];

  env.NIX_CFLAGS_COMPILE = toString (
    lib.optionals stdenv.cc.isClang [
      "-Wno-error=strict-prototypes"
      "-Wno-error=newline-eof"
    ]
  );

  doCheck = true;

  meta = {
    homepage = "https://github.com/rtbrick/libdict/";
    changelog = "https://github.com/rtbrick/libdict/releases/tag/${finalAttrs.version}";
    description = "C library of key-value data structures";
<<<<<<< HEAD
    license = lib.licenses.bsd2;
    teams = [ lib.teams.wdz ];
||||||| 213fed0310e3
    license = licenses.bsd2;
    teams = [ teams.wdz ];
=======
    license = lib.licenses.bsd2;
>>>>>>> master
  };
})
