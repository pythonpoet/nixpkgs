{
  lib,
  stdenv,
  fetchFromGitLab,
  meson,
  ninja,
  pkg-config,
  unixtools,
  dbus,
  libcap,
  polkit,
  systemd,
  fetchpatch,
  nix-update-script,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "rtkit";
  version = "0.14";

  src = fetchFromGitLab {
    domain = "gitlab.freedesktop.org";
    owner = "pipewire";
    repo = "rtkit";
    tag = "v${finalAttrs.version}";
    hash = "sha256-y952SHbUWIjg1BKqenHABVWm0S5d/sBac1zRp9BpXB8=";
  };

  patches = [
    # Let us override the `sysusersdir` path
    (fetchpatch {
      url = "https://gitlab.freedesktop.org/pipewire/rtkit/-/commit/621fdc3f2c037781dc279760cfbff64974fdbe77.patch";
      hash = "sha256-Ffdi6dfZmdBpClpJkPNISmEoeUkIufrObz5g7RSPqLw=";
    })
  ];

  nativeBuildInputs = [
    meson
    ninja
    pkg-config
    unixtools.xxd
  ];

  buildInputs = [
    dbus
    libcap
    polkit
    systemd
  ];

  mesonFlags = [
    (lib.mesonBool "installed_tests" false)
    (lib.mesonOption "dbus_systemservicedir" "${placeholder "out"}/share/dbus-1/system-services")
    (lib.mesonOption "dbus_interfacedir" "${placeholder "out"}/share/dbus-1/interfaces")
    (lib.mesonOption "dbus_rulesdir" "${placeholder "out"}/etc/dbus-1/system.d")
    (lib.mesonOption "polkit_actiondir" "${placeholder "out"}/share/polkit-1/actions")
    (lib.mesonOption "systemd_systemunitdir" "${placeholder "out"}/etc/systemd/system")
    (lib.mesonOption "systemd_sysusersdir" "${placeholder "out"}/lib/sysusers.d")
  ];

<<<<<<< HEAD
  meta = {
    homepage = "https://github.com/heftig/rtkit";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "https://github.com/heftig/rtkit";
=======
  passthru.updateScript = nix-update-script { };

  meta = {
    homepage = "https://gitlab.freedesktop.org/pipewire/rtkit";
>>>>>>> master
    description = "Daemon that hands out real-time priority to processes";
    mainProgram = "rtkitctl";
<<<<<<< HEAD
    license = with lib.licenses; [
      gpl3
      bsd0
    ]; # lib is bsd license
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    license = with licenses; [
      gpl3
      bsd0
    ]; # lib is bsd license
    platforms = platforms.linux;
=======
    license = with lib.licenses; [
      gpl3Plus
      mit
    ];
    platforms = lib.platforms.linux;
    maintainers = [ lib.maintainers.Gliczy ];
>>>>>>> master
  };
})
