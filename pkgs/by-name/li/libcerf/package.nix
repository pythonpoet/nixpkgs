{
  stdenv,
  lib,
  fetchurl,
  cmake,
  perl,
  gnuplot,
}:

stdenv.mkDerivation rec {
  pname = "libcerf";
  version = "3.2";

  src = fetchurl {
    url = "https://jugit.fz-juelich.de/mlz/libcerf/-/archive/v${version}/libcerf-v${version}.tar.gz";
    sha256 = "sha256-6o0RDXPsJKZDBCyjlARhzLsbZUHiExDstwq05NwUSu8=";
  };

  nativeBuildInputs = [
    cmake
    perl
  ];

  passthru.tests = {
    inherit gnuplot;
  };

  meta = {
    description = "Complex error (erf), Dawson, Faddeeva, and Voigt function library";
    homepage = "https://jugit.fz-juelich.de/mlz/libcerf";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ orivej ];
    platforms = lib.platforms.all;
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ orivej ];
    platforms = platforms.all;
=======
    license = lib.licenses.mit;
    maintainers = [ ];
    platforms = lib.platforms.all;
>>>>>>> master
  };
}
