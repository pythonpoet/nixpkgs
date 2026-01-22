{
  lib,
  stdenv,
  fetchFromGitHub,
  libnotify,
  pkg-config,
  glib,
}:

stdenv.mkDerivation rec {
  pname = "batsignal";
  version = "1.8.0";

  src = fetchFromGitHub {
    owner = "electrickite";
    repo = "batsignal";
    tag = version;
    sha256 = "sha256-yngd2yP6XtRp8y8ZUd0NISdf8+8wJvpLogrQQMdB0lA=";
  };

  buildInputs = [
    libnotify
    glib
  ];
  nativeBuildInputs = [ pkg-config ];
  installFlags = [ "PREFIX=${placeholder "out"}" ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  env.NIX_CFLAGS_COMPILE = toString [
    "-Wno-error=incompatible-pointer-types"
  ];

  meta = {
>>>>>>> master
    homepage = "https://github.com/electrickite/batsignal";
    description = "Lightweight battery daemon written in C";
    license = lib.licenses.isc;
    maintainers = with lib.maintainers; [ SlothOfAnarchy ];
    platforms = lib.platforms.linux;
    mainProgram = "batsignal";
  };
}
