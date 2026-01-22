{
  lib,
  stdenv,
  fetchFromGitea,
  autoreconfHook,
  nix-update-script,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "libHX";
  version = "5.2";

  src = fetchFromGitea {
    domain = "codeberg.org";
    tag = "v${finalAttrs.version}";
    owner = "jengelh";
    repo = "libhx";
    hash = "sha256-z1/D5dkcDc2VIoGCvunUYsLGq3AV6jZ01Edf1vuUx9o=";
  };

  nativeBuildInputs = [ autoreconfHook ];

  passthru.updateScript = nix-update-script { };

<<<<<<< HEAD
  preConfigure = ''
    sh autogen.sh
  '';

  meta = {
    homepage = "https://libhx.sourceforge.net/";
||||||| 213fed0310e3
  preConfigure = ''
    sh autogen.sh
  '';

  meta = with lib; {
    homepage = "https://libhx.sourceforge.net/";
=======
  meta = {
    homepage = "https://inai.de/projects/libhx/";
>>>>>>> master
    longDescription = ''
      libHX is a C library (with some C++ bindings available) that provides data structures
      and functions commonly needed, such as maps, deques, linked lists, string formatting
      and autoresizing, option and config file parsing, type checking casts and more.
    '';
<<<<<<< HEAD
    maintainers = [ ];
    platforms = lib.platforms.linux;
    license = with lib.licenses; [
||||||| 213fed0310e3
    maintainers = [ ];
    platforms = platforms.linux;
    license = with licenses; [
=======
    changelog = "https://codeberg.org/jengelh/libhx/src/branch/master/doc/changelog.rst";
    maintainers = with lib.maintainers; [ chillcicada ];
    platforms = lib.platforms.linux;
    license = with lib.licenses; [
>>>>>>> master
      gpl3
      lgpl21Plus
      mit
    ];
  };
})
