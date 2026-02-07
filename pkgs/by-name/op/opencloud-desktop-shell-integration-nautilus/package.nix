{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  pkg-config,
  python3Packages,
  nautilus-python,
  opencloud-desktop-shell-integration-resources,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "opencloud-desktop-shell-integration-nautilus";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "opencloud-eu";
    repo = "desktop-shell-integration-nautilus";
    tag = "v${finalAttrs.version}";
    hash = "sha256-M9kzaiCUV64JgS3110LUbjSeZ2wEf2kAmwqTTi4r0tY="; 
  };

  nativeBuildInputs = [
    cmake
    pkg-config
    python3Packages.wrapPython
  ];

  buildInputs = [
    python3Packages.python
    python3Packages.pygobject3 # Required for GNOME Python extensions
    nautilus-python
    opencloud-desktop-shell-integration-resources
  ];

  # We let CMake handle the configuration, but we override the destination 
  # to match the standard Python extension path.
  cmakeFlags = [
    "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
    "-DNAUTILUS_EXTENSION_DIR=${placeholder "out"}/share/nautilus-python/extensions"
  ];

  pythonPath = [
    opencloud-desktop-shell-integration-resources
    python3Packages.pygobject3
  ];

  # This ensures that when Nautilus loads the script, 
  # the script can find its 'OpenCloud' Python modules.
  postInstall = ''
    wrapPythonProgramsIn "$out/share/nautilus-python/extensions" "$pythonPath"
  '';

  meta = {
    description = "OpenCloud Desktop shell integration for Nautilus";
    homepage = "https://github.com/opencloud-eu/desktop-shell-integration-nautilus";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ pythonpoet ];
    platforms = lib.platforms.linux;
  };
})