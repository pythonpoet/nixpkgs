{
  stdenv,
  lib,
  fetchFromGitea,
  autoreconfHook,
  pkg-config,
  guile,
  texinfo,
  zstd,
}:

stdenv.mkDerivation rec {
  pname = "guile-zstd";
  version = "0.1.1";

  src = fetchFromGitea {
    domain = "notabug.org";
    owner = "guile-zstd";
    repo = "guile-zstd";
    rev = "v${version}";
    hash = "sha256-IAyDoqb7qHAy666hxs6CCZrFnfwwV8AaR92XlQQ6FLE=";
  };

  strictDeps = true;
  nativeBuildInputs = [
    autoreconfHook
    guile
    pkg-config
    texinfo
  ];
  buildInputs = [ guile ];
  propagatedBuildInputs = [ zstd ];
  makeFlags = [ "GUILE_AUTO_COMPILE=0" ];

  doCheck = !stdenv.hostPlatform.isDarwin;

  meta = {
    description = "GNU Guile library providing bindings to zstd";
    homepage = "https://notabug.org/guile-zstd/guile-zstd";
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
