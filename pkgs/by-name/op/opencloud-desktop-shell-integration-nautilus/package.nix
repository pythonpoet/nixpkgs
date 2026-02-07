{
  lib,
  stdenv,
  fetchFromGitHub,
  python3Packages,
  nautilus-python,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "opencloud-desktop-shell-integration-nautilus";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "opencloud-eu";
    repo = "desktop-shell-integration-nautilus";
    tag = "v${finalAttrs.version}";
    hash = "sha256-M9kzaiCUV64JgS3110LUbjSeZ2wEf2kAmwqTTi4r0tY="; # Replace after first run
  };

  # Since this is a pure Python extension, we don't actually need CMake 
  # unless there are C++ components. Based on your description, 
  # we can just manually install the python file.
  
  buildInputs = [
    python3Packages.python
    python3Packages.pygobject3
    nautilus-python
  ];

  installPhase = ''
    runHook preInstall

    # The standard path where nautilus-python looks for extensions
    mkdir -p $out/share/nautilus-python/extensions
    
    # Copy the main script. 
    # Note: Using 'src/syncstate.py' based on your previous directory mention.
    cp src/syncstate.py $out/share/nautilus-python/extensions/opencloud-syncstate.py

    runHook postInstall
  '';

  meta = {
    description = "OpenCloud Desktop shell integration for Nautilus (Python)";
    homepage = "https://github.com/opencloud-eu/desktop-shell-integration-nautilus";
    license = lib.licenses.gpl2Only;
    platforms = lib.platforms.linux;
  };
})