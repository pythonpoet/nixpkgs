{
  lib,
  stdenv,
  fetchFromGitLab,
  meson,
  ninja,
  pkg-config,
  glib,
}:

stdenv.mkDerivation rec {
  pname = "libslirp";
  version = "4.9.1";

  src = fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "slirp";
    repo = "libslirp";
    rev = "v${version}";
    sha256 = "sha256-MKP3iBExaPQryiahI1l/4bTgVht5Vu8AxaDyMotqmMo=";
  };

  separateDebugInfo = true;

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
  ];

  buildInputs = [ glib ];

  postPatch = ''
    echo ${version} > .tarball-version
  '';

  meta = {
    description = "General purpose TCP-IP emulator";
    homepage = "https://gitlab.freedesktop.org/slirp/libslirp";
<<<<<<< HEAD
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ orivej ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.bsd3;
    maintainers = with maintainers; [ orivej ];
    platforms = platforms.unix;
=======
    license = lib.licenses.bsd3;
    maintainers = [ ];
    platforms = lib.platforms.unix;
>>>>>>> master
  };
}
