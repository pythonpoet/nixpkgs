{
  lib,
  cmake,
  kdePackages,
  fetchFromGitHub,
  libre-graph-api-cpp-qt-client,
  kdsingleapplication,
  nix-update-script,
  qt6,
  versionCheckHook,
  stdenv,
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "opencloud-desktop";
  version = "3.0.3";
  src = fetchFromGitHub {
    owner = "opencloud-eu";
    repo = "desktop";
    tag = "v${finalAttrs.version}";
    hash = "sha256-b6KaWrthL2z/Ep+O7wFIXxjd+H8+sBqZz8nmoQijTQU=";
  };

  buildInputs = [
    qt6.qtbase
    qt6.qtdeclarative
    qt6.qttools
    qt6.qtsvg        # Often needed for tray icons
    qt6.qt5compat
    kdePackages.qtshadertools
    kdePackages.extra-cmake-modules
    kdePackages.qtkeychain
    libre-graph-api-cpp-qt-client
    kdsingleapplication
  ];

  nativeBuildInputs = [
    cmake
    qt6.wrapQtAppsHook
  ];

  strictDeps = true;

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgram = "${placeholder "out"}/bin/opencloudcmd";

  qtWrapperArgs = [
    "--set QT_QPA_PLATFORM wayland;xcb"
  ];
  

  passthru.extensionPath = "/share/nautilus-python/extensions";

  meta = {
    changelog = "https://github.com/opencloud-eu/desktop/releases/tag/v${finalAttrs.version}";
    description = "Desktop Application for OpenCloud";
    downloadPage = "https://github.com/opencloud-eu/desktop";
    homepage = "https://opencloud.eu/en";
    license = lib.licenses.gpl2Only;
    maintainers = [ lib.maintainers.FKouhai ];
  };
})
