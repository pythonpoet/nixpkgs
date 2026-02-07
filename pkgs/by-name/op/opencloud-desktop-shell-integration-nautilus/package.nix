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
  version = "1.0.0"; # Replace with the latest tag

  src = fetchFromGitHub {
    owner = "opencloud-eu";
    repo = "desktop-shell-integration-nautilus";
    tag = "v${finalAttrs.version}";
    hash = "sha256-M9kzaiCUV64JgS3110LUbjSeZ2wEf2kAmwqTTi4r0tY="; # Run nix-build to get the real hash
  };

  nativeBuildInputs = [
    cmake
    pkg-config
  ];

  buildInputs = [
    python3Packages.python
    nautilus-python
    opencloud-desktop-shell-integration-resources
  ];

  # Nautilus extensions are usually just python files copied to a specific directory
  # The CMake script in the repo typically handles this, but we ensure the path is correct
  cmakeFlags = [
    "-DCMAKE_INSTALL_PREFIX=${placeholder "out"}"
    "-DNAUTILUS_EXTENSION_DIR=${placeholder "out"}/lib/nautilus/extensions-4"
  ];

  meta = {
    description = "OpenCloud Desktop shell integration for Nautilus";
    homepage = "https://github.com/opencloud-eu/desktop-shell-integration-nautilus";
    license = lib.licenses.gpl2Only;
    maintainers = with lib.maintainers; [ pythonpoet ];
    platforms = lib.platforms.linux;
  };
})