{
  lib,
  stdenv,
  fetchFromGitHub,
  installShellFiles,
}:

stdenv.mkDerivation rec {
  pname = "gti";
  version = "1.9.1";

  src = fetchFromGitHub {
    owner = "rwos";
    repo = "gti";
    rev = "v${version}";
    sha256 = "sha256-DUDCFcaB38Xkp3lLfEhjGC0j430dphXFBVhGzm7/Bp0=";
  };

  postPatch = ''
    substituteInPlace Makefile --replace 'CC=cc' 'CC=${stdenv.cc.targetPrefix}cc'
  '';

  nativeBuildInputs = [
    installShellFiles
  ];

  installPhase = ''
    install -D gti $out/bin/gti
    installManPage gti.6
    installShellCompletion --cmd gti \
      --bash completions/gti.bash \
      --zsh completions/gti.zsh
  '';

  meta = {
    homepage = "https://r-wos.org/hacks/gti";
    license = lib.licenses.mit;
    description = "Humorous typo-based git runner; drives a car over the terminal";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ fadenb ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    maintainers = with maintainers; [ fadenb ];
    platforms = platforms.unix;
=======
    platforms = lib.platforms.unix;
>>>>>>> master
    mainProgram = "gti";
  };
}
