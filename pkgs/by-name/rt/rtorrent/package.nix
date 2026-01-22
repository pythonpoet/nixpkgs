{
  autoreconfHook,
  cppunit,
  curl,
  fetchFromGitHub,
  installShellFiles,
  lib,
  libtool,
  libtorrent-rakshasa,
  lua5_4_compat,
  ncurses,
  nixosTests,
  nix-update-script,
  openssl,
  pkg-config,
  stdenv,
  versionCheckHook,
  withLua ? false,
  zlib,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "rtorrent";
<<<<<<< HEAD
  version = "0.16.5";
||||||| 213fed0310e3
  version = "0.16.2";
=======
  version = "0.16.6";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "rakshasa";
    repo = "rtorrent";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-zncal17A4/+WGU3L8iJVSMJtKTKNmMHCXJ2O7Za2VOE=";
||||||| 213fed0310e3
    hash = "sha256-WXH5Op8P+UlcrbHri4yOTjQJSqc39fxxxOXpMmC7DHE=";
=======
    hash = "sha256-Y8LFysyfOsgsMmbLFcf+SjKKDdTFBwDPQU0hW6hiXII=";
>>>>>>> master
  };

  outputs = [
    "out"
    "man"
  ];

  nativeBuildInputs = [
    autoreconfHook
    installShellFiles
    pkg-config
  ];

  buildInputs = [
    cppunit
    curl
    libtool
    libtorrent-rakshasa
    ncurses
    openssl
    zlib
  ]
  ++ lib.optionals withLua [ lua5_4_compat ];

  configureFlags = [
    "--with-xmlrpc-tinyxml2"
    "--with-posix-fallocate"
  ]
  ++ lib.optionals withLua [ "--with-lua" ];

  enableParallelBuilding = true;

  postInstall = ''
    installManPage doc/old/rtorrent.1
    install -Dm644 doc/rtorrent.rc-example -t $out/share/doc/rtorrent/rtorrent.rc
  '';

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "-h";

  passthru = {
    inherit libtorrent-rakshasa;
    tests = { inherit (nixosTests) rtorrent; };
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Ncurses client for libtorrent, ideal for use with screen, tmux, or dtach";
    homepage = "https://rakshasa.github.io/rtorrent/";
    license = lib.licenses.gpl2Plus;
    mainProgram = "rtorrent";
    maintainers = with lib.maintainers; [
      codyopel
      thiagokokada
    ];
    platforms = lib.platforms.unix;
  };
})
