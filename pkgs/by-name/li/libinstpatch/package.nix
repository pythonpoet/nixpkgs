{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  pkg-config,
  glib,
  libsndfile,
}:

stdenv.mkDerivation rec {
  pname = "libinstpatch";
  version = "1.1.7";

  src = fetchFromGitHub {
    owner = "swami";
    repo = "libinstpatch";
    rev = "v${version}";
    sha256 = "sha256-y3rmCQk3homgnWT/i/qhKJ6gRO8opMFnaC0T8d5UN48=";
  };

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  propagatedBuildInputs = [
    glib
    libsndfile
  ]; # Both are needed for includes.

  cmakeFlags = [
    "-DLIB_SUFFIX=" # Install in $out/lib.
  ];

  meta = {
    homepage = "http://www.swamiproject.org/";
    description = "MIDI instrument patch files support library";
<<<<<<< HEAD
    license = lib.licenses.lgpl21;
    maintainers = with lib.maintainers; [ orivej ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.lgpl21;
    maintainers = with maintainers; [ orivej ];
    platforms = platforms.unix;
=======
    license = lib.licenses.lgpl21;
    maintainers = [ ];
    platforms = lib.platforms.unix;
>>>>>>> master
  };
}
