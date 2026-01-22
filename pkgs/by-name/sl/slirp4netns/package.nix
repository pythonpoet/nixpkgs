{
  lib,
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
  pkg-config,
  glib,
  libcap,
  libseccomp,
  libslirp,
  nixosTests,
}:

stdenv.mkDerivation rec {
  pname = "slirp4netns";
  version = "1.3.3";

  src = fetchFromGitHub {
    owner = "rootless-containers";
    repo = "slirp4netns";
    rev = "v${version}";
    sha256 = "sha256-dPhUr9GdujTpUsnfvZDp8eOBQwlzqwtwziII2QWD4JA=";
  };

  nativeBuildInputs = [
    autoreconfHook
    pkg-config
  ];

  buildInputs = [
    glib
    libcap
    libseccomp
    libslirp
  ];

  enableParallelBuilding = true;
  strictDeps = true;

  passthru.tests = { inherit (nixosTests) podman; };

  meta = {
    homepage = "https://github.com/rootless-containers/slirp4netns";
    description = "User-mode networking for unprivileged network namespaces";
<<<<<<< HEAD
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ orivej ];
    teams = [ lib.teams.podman ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    license = licenses.gpl2Only;
    maintainers = with maintainers; [ orivej ];
    teams = [ teams.podman ];
    platforms = platforms.linux;
=======
    license = lib.licenses.gpl2Only;
    maintainers = [ ];
    teams = [ lib.teams.podman ];
    platforms = lib.platforms.linux;
>>>>>>> master
    mainProgram = "slirp4netns";
  };
}
