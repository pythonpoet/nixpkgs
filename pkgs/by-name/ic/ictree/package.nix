{
  stdenv,
  lib,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "ictree";
  version = "1.0.1";

  src = fetchFromGitHub {
    owner = "NikitaIvanovV";
    repo = "ictree";
    tag = "v${version}";
    hash = "sha256-77Wo6jN8VUGTXBuGL0a9kvSIixdyEQoxqqNsHq9jcWw=";
    fetchSubmodules = true;
  };

  makeFlags = [ "PREFIX=$(out)" ];

  meta = {
    description = "Like tree but interactive";
    homepage = "https://github.com/NikitaIvanovV/ictree";
<<<<<<< HEAD
    platforms = lib.platforms.unix;
    maintainers = with lib.maintainers; [ foo-dogsquared ];
||||||| 213fed0310e3
    platforms = platforms.unix;
    maintainers = with maintainers; [ foo-dogsquared ];
=======
    platforms = lib.platforms.unix;
    maintainers = [ ];
>>>>>>> master
    mainProgram = "ictree";
  };
}
