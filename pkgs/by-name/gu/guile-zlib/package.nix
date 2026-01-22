{
  stdenv,
  lib,
  fetchFromGitea,
  autoreconfHook,
  pkg-config,
  guile,
  texinfo,
  zlib,
}:

stdenv.mkDerivation rec {
  pname = "guile-zlib";
  version = "0.2.2";

  src = fetchFromGitea {
    domain = "notabug.org";
    owner = "guile-zlib";
    repo = "guile-zlib";
    rev = "v${version}";
    hash = "sha256-aaZhwHimQq408DNtHy442kh/EYdRdxP0Z1tQGDKmkmc=";
  };

  strictDeps = true;
  nativeBuildInputs = [
    autoreconfHook
    guile
    pkg-config
    texinfo
  ];
  buildInputs = [ guile ];
  propagatedBuildInputs = [ zlib ];
  makeFlags = [ "GUILE_AUTO_COMPILE=0" ];

  doCheck = true;

  meta = {
    description = "GNU Guile library providing bindings to zlib";
    homepage = "https://notabug.org/guile-zlib/guile-zlib";
<<<<<<< HEAD
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ foo-dogsquared ];
||||||| 213fed0310e3
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ foo-dogsquared ];
=======
    license = lib.licenses.gpl3Plus;
    maintainers = [ ];
>>>>>>> master
    platforms = guile.meta.platforms;
  };
}
