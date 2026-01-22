{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "cfm";
  version = "0.6.6";

  src = fetchFromGitHub {
    owner = "willeccles";
    repo = "cfm";
    rev = "v${version}";
    sha256 = "sha256-uXL0RO9P+NYSZ0xCv91KzjHOJJI500YUT8IJkFS86pE=";
  };

  makeFlags = [
    "DESTDIR=${placeholder "out"}"
    "PREFIX="
  ];

  meta = {
    homepage = "https://github.com/willeccles/cfm";
    description = "Simple and fast TUI file manager with no dependencies";
<<<<<<< HEAD
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ lom ];
    platforms = lib.platforms.all;
||||||| 213fed0310e3
    license = licenses.mpl20;
    maintainers = with maintainers; [ lom ];
    platforms = platforms.all;
=======
    license = lib.licenses.mpl20;
    maintainers = [ ];
    platforms = lib.platforms.all;
>>>>>>> master
    mainProgram = "cfm";
  };
}
