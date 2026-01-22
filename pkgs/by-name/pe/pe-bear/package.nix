{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  libsForQt5,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "pe-bear";
  version = "0.7.1";

  src = fetchFromGitHub {
    owner = "hasherezade";
    repo = "pe-bear";
    tag = "v${finalAttrs.version}";
    hash = "sha256-jWRO0vO601IijFo7nu0SMF8inEXWLzv+Ni1nlJfGqhQ=";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [
    cmake
    libsForQt5.wrapQtAppsHook
  ];

  buildInputs = [
    libsForQt5.qtbase
  ];

  meta = {
    description = "Portable Executable reversing tool with a friendly GUI";
    mainProgram = "PE-bear";
    homepage = "https://hshrzd.wordpress.com/pe-bear/";

    license = with lib.licenses; [
      # PE-Bear
<<<<<<< HEAD:pkgs/applications/misc/pe-bear/default.nix
      lib.licenses.gpl2Only
||||||| 213fed0310e3:pkgs/applications/misc/pe-bear/default.nix
      licenses.gpl2Only
=======
      gpl2Only
>>>>>>> master:pkgs/by-name/pe/pe-bear/package.nix

      # Vendored capstone
<<<<<<< HEAD:pkgs/applications/misc/pe-bear/default.nix
      lib.licenses.bsd3
||||||| 213fed0310e3:pkgs/applications/misc/pe-bear/default.nix
      licenses.bsd3
=======
      bsd3
>>>>>>> master:pkgs/by-name/pe/pe-bear/package.nix

      # Vendored bearparser
<<<<<<< HEAD:pkgs/applications/misc/pe-bear/default.nix
      lib.licenses.bsd2
||||||| 213fed0310e3:pkgs/applications/misc/pe-bear/default.nix
      licenses.bsd2
=======
      bsd2
>>>>>>> master:pkgs/by-name/pe/pe-bear/package.nix
    ];

<<<<<<< HEAD:pkgs/applications/misc/pe-bear/default.nix
    maintainers = with lib.maintainers; [ blitz ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3:pkgs/applications/misc/pe-bear/default.nix
    maintainers = with maintainers; [ blitz ];
    platforms = platforms.linux;
=======
    maintainers = [ lib.maintainers.blitz ];
    platforms = lib.platforms.linux;
>>>>>>> master:pkgs/by-name/pe/pe-bear/package.nix
  };
})
