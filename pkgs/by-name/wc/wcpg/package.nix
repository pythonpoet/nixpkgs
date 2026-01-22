{
  lib,
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
  blas,
  gmp,
  lapack,
  libf2c,
  mpfi,
  mpfr,
}:

stdenv.mkDerivation rec {
  pname = "wcpg";
  version = "0.9";

  src = fetchFromGitHub {
    owner = "fixif";
    repo = "wcpg";
    rev = version;
    sha256 = "sha256-uA/ENjf4urEO+lqebkp/k54199o2434FYgPSmYCG4UA=";
  };

  nativeBuildInputs = [
    autoreconfHook
  ];

  buildInputs = [
    blas
    gmp
    lapack
    libf2c
    mpfi
    mpfr
  ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  makeFlags = [
    "CFLAGS=-std=c17"
  ];

  meta = {
>>>>>>> master
    description = "Worst-Case Peak-Gain library";
    homepage = "https://github.com/fixif/WCPG";
    license = lib.licenses.cecill-b;
    platforms = lib.platforms.unix;
    maintainers = with lib.maintainers; [ wegank ];
  };
}
