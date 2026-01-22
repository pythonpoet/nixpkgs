{
  lib,
  fetchFromGitLab,
  python3Packages,
  sphinxHook,
  nix-update-script,
}:

python3Packages.buildPythonApplication rec {
  pname = "mpd-sima";
  version = "0.18.2";

  src = fetchFromGitLab {
    owner = "kaliko";
    repo = "sima";
    rev = version;
    hash = "sha256-lMvM1EqS1govhv4B2hJzIg5DFQYgEr4yJJtgOQxnVlY=";
  };

  format = "setuptools";

  postPatch = ''
    sed -i '/intersphinx/d' doc/source/conf.py
  '';

  nativeBuildInputs = [
    sphinxHook
  ];

  sphinxBuilders = [ "man" ];

  dependencies = with python3Packages; [
    requests
    python-musicpd
  ];

  doCheck = true;

  preCheck = ''
    export HOME="$(mktemp -d)"
  '';

<<<<<<< HEAD:pkgs/tools/audio/mpd-sima/default.nix
  meta = {
||||||| 213fed0310e3:pkgs/tools/audio/mpd-sima/default.nix
  meta = with lib; {
=======
  passthru.updateScript = nix-update-script { };

  meta = {
>>>>>>> master:pkgs/by-name/mp/mpd-sima/package.nix
    description = "Autoqueuing mpd client";
    homepage = "https://kaliko.me/mpd-sima/";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [ apfelkuchen6 ];
    mainProgram = "mpd-sima";
  };
}
