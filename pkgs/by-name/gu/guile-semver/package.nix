{
  lib,
  stdenv,
  fetchurl,
  autoreconfHook,
  pkg-config,
  texinfo,
  guile,
}:

stdenv.mkDerivation rec {
  pname = "guile-semver";
  version = "0.1.1";

  src = fetchurl {
    url = "https://files.ngyro.com/guile-semver/guile-semver-${version}.tar.gz";
    hash = "sha256-T3kJGTdf6yBKjqLtqSopHZu03kyOscZ3Z4RYmoYlN4E=";
  };

  strictDeps = true;
  nativeBuildInputs = [
    autoreconfHook
    guile
    pkg-config
    texinfo
  ];
  buildInputs = [ guile ];

  doCheck = true;

  meta = {
    description = "GNU Guile library implementing Semantic Versioning 2.0.0";
    homepage = "https://ngyro.com/software/guile-semver.html";
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
