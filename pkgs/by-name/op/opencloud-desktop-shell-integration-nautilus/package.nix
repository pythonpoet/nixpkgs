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
    python3Packages.wrapPython # Required to make dependencies visible to the script
  ];

  buildInputs = [
    python3Packages.python
    nautilus-python
    opencloud-desktop-shell-integration-resources
  ];

  # We force the path to 'share' because GNOME 47's python loader
  # looks there, not in 'lib/nautilus/extensions-4'.
  cmakeFlags = [
    "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
    "-DNAUTILUS_EXTENSION_DIR=${placeholder "out"}/share/nautilus-python/extensions"
  ];

  # This ensures the Python script can find the 'opencloud' resources at runtime
  pythonPath = [
    opencloud-desktop-shell-integration-resources
  ];

  postFixup = ''
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