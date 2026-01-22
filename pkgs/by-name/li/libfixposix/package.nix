{
  lib,
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
  pkg-config,
  getconf,
}:

stdenv.mkDerivation rec {
  pname = "libfixposix";
  version = "0.5.1";

  src = fetchFromGitHub {
    owner = "sionescu";
    repo = "libfixposix";
    rev = "v${version}";
    sha256 = "sha256-5qA6ytbqE+/05XQGxP9/4vEs9gFcuI3k7eJJYucW7fM=";
  };

  nativeBuildInputs = [
    autoreconfHook
    pkg-config
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [ getconf ];

  meta = {
    homepage = "https://github.com/sionescu/libfixposix";
    description = "Thin wrapper over POSIX syscalls and some replacement functionality";
<<<<<<< HEAD
    license = lib.licenses.boost;
    maintainers = with lib.maintainers; [
      orivej
||||||| 213fed0310e3
    license = licenses.boost;
    maintainers = with maintainers; [
      orivej
=======
    license = lib.licenses.boost;
    maintainers = with lib.maintainers; [
>>>>>>> master
      raskin
    ];
    platforms = lib.platforms.linux ++ lib.platforms.darwin;
  };
}
