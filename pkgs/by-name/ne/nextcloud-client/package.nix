{
  lib,
  gitUpdater,
  fetchFromGitHub,
  qt6Packages,
  stdenv,
  cmake,
  extra-cmake-modules,
  inotify-tools,
  kdePackages,
  libcloudproviders,
  libp11,
  librsvg,
  libsecret,
  openssl,
  pcre,
  pkg-config,
  sphinx,
  sqlite,
  xdg-utils,
  libsysprof-capture,
}:

stdenv.mkDerivation rec {
  pname = "nextcloud-client";
<<<<<<< HEAD
  version = "4.0.3";
||||||| 213fed0310e3
  version = "4.0.1";
=======
  version = "4.0.5";
>>>>>>> master

  outputs = [
    "out"
    "dev"
  ];

  src = fetchFromGitHub {
    owner = "nextcloud-releases";
    repo = "desktop";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-PwL5USUP60ePxn0U7zyx6hHQlx4xKVquZ1QLTWTsSRU=";
||||||| 213fed0310e3
    hash = "sha256-5E4VB+wZQfB8zkFtNrzpCv47iCpk6XS4rCkDKoU0JhM=";
=======
    hash = "sha256-cEe1GTRFC+iGAAgddRm70uf5tXmpCat7Q7BptFEYKnE=";
>>>>>>> master
  };

  patches = [
    ./0001-When-creating-the-autostart-entry-do-not-use-an-abso.patch
  ];

  postPatch = ''
    substituteInPlace CMakeLists.txt \
      --replace-fail '"''${SYSTEMD_USER_UNIT_DIR}"' "\"$out/lib/systemd/user\""

    for file in src/libsync/vfs/*/CMakeLists.txt; do
      substituteInPlace $file \
        --replace-fail "PLUGINDIR" "KDE_INSTALL_PLUGINDIR"
    done
  '';

  nativeBuildInputs = [
    pkg-config
    cmake
    extra-cmake-modules
    librsvg
    sphinx
    qt6Packages.wrapQtAppsHook
  ];

  buildInputs = [
    inotify-tools
    kdePackages.kio
    libcloudproviders
    libp11
    libsecret
    openssl
    pcre
    qt6Packages.qt5compat
    qt6Packages.qtbase
    qt6Packages.qtkeychain
    qt6Packages.qtsvg
    qt6Packages.qttools
    qt6Packages.qtwebengine
    qt6Packages.qtwebsockets
    qt6Packages.qtwayland
    sqlite
    libsysprof-capture
  ];

  qtWrapperArgs = [
    "--prefix LD_LIBRARY_PATH : ${lib.makeLibraryPath [ libsecret ]}"
    # make xdg-open overridable at runtime
    "--suffix PATH : ${lib.makeBinPath [ xdg-utils ]}"
  ];

  cmakeFlags = [
    "-DBUILD_UPDATER=off"
    "-DCMAKE_INSTALL_LIBDIR=lib" # expected to be prefix-relative by build code setting RPATH
    "-DMIRALL_VERSION_SUFFIX=" # remove git suffix from version
  ];

  passthru.updateScript = gitUpdater { rev-prefix = "v"; };

  meta = {
    changelog = "https://github.com/nextcloud/desktop/releases/tag/v${version}";
    description = "Desktop sync client for Nextcloud";
    homepage = "https://nextcloud.com";
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [
      SuperSandro2000
    ];
    platforms = lib.platforms.linux;
    mainProgram = "nextcloud";
  };
}
