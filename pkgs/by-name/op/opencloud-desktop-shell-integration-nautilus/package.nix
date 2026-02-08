{
  lib,
  stdenv,
  fetchFromGitHub,
  python3,
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

  buildInputs = [
    # We include python with pygobject3 so the script can import 'gi'
    (python3.withPackages (ps: [ ps.pygobject3 ]))
    nautilus-python
    opencloud-desktop-shell-integration-resources
  ];

  installPhase = ''
    runHook preInstall

    # 1. Install the Python extension script
    # This is the standard path for nautilus-python discovery
    mkdir -p $out/share/nautilus-python/extensions
    cp src/syncstate.py $out/share/nautilus-python/extensions/opencloud-syncstate.py

    # 2. Symlink icons from the resources package into this package output
    # This ensures that when this package is added to a buildEnv, 
    # the icons appear in the merged share/icons folder.
    mkdir -p $out/share/icons
    ln -s ${opencloud-desktop-shell-integration-resources}/share/icons/* $out/share/icons/

    runHook postInstall
  '';

  meta = {
    description = "OpenCloud Nautilus Python integration and status icons";
    homepage = "https://github.com/opencloud-eu/desktop-shell-integration-nautilus";
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.linux;
  };
})