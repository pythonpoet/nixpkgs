{
  lib,
  stdenv,
  fetchFromGitea,
  autoreconfHook,
  perl,
  pkg-config,
  pam,
  libHX,
  libxml2,
  pcre2,
  openssl,
  cryptsetup,
  util-linux,
  nix-update-script,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "pam_mount";
  version = "2.22";

  src = fetchFromGitea {
    domain = "codeberg.org";
    tag = "v${finalAttrs.version}";
    owner = "jengelh";
    repo = "pam_mount";
    hash = "sha256-13vAYIulkOdq0u6xyYgVFmFo31yLmL5Ip79ZTo3Zhn0=";
  };

  patches = [
    ./insert_utillinux_path_hooks.patch
    ./resolve_build_failure_with_gcc-13.patch
  ];

  postPatch = ''
    substituteInPlace src/mtcrypt.c \
      --replace @@NIX_UTILLINUX@@ ${util-linux}/bin
  '';

  nativeBuildInputs = [
    autoreconfHook
    perl
    pkg-config
  ];

  buildInputs = [
    cryptsetup
    libHX
    libxml2
    openssl
    pam
    pcre2
    util-linux
  ];

  enableParallelBuilding = true;

  configureFlags = [
    "--prefix=${placeholder "out"}"
    "--localstatedir=${placeholder "out"}/var"
    "--sbindir=${placeholder "out"}/bin"
    "--sysconfdir=${placeholder "out"}/etc"
    "--with-slibdir=${placeholder "out"}/lib"
  ];

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "PAM module to mount volumes for a user session";
<<<<<<< HEAD
    homepage = "https://pam-mount.sourceforge.net/";
    license = with lib.licenses; [
||||||| 213fed0310e3
    homepage = "https://pam-mount.sourceforge.net/";
    license = with licenses; [
=======
    homepage = "https://inai.de/projects/pam_mount/";
    license = with lib.licenses; [
>>>>>>> master
      gpl2Plus
      gpl3
      lgpl21
      lgpl3
    ];
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ netali ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    maintainers = with maintainers; [ netali ];
    platforms = platforms.linux;
=======
    maintainers = with lib.maintainers; [
      netali
      chillcicada
    ];
    platforms = lib.platforms.linux;
>>>>>>> master
  };
})
