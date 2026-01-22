{
  lib,
  stdenv,
  fetchFromGitHub,
  rustPlatform,
  fontconfig,
  libxkbcommon,
  openssl,
  pkg-config,
  xorg,
  vulkan-loader,
  wayland,
}:
rustPlatform.buildRustPackage (finalAttrs: {
  pname = "furtherance";
  version = "26.1.1";

  src = fetchFromGitHub {
    owner = "unobserved-io";
    repo = "Furtherance";
    rev = finalAttrs.version;
    hash = "sha256-VG1Ghhi74tkPU9bgauV98Gp5kVoZJ1cJUqWLWnrUAOU=";
  };

  cargoHash = "sha256-6S0L8FHI5eCTzhxlew35pK7TewMplKKJDaqJdtoYRnM=";

  nativeBuildInputs = [
    pkg-config
  ];

  buildInputs = [
    fontconfig
    openssl
    libxkbcommon
    xorg.libX11
    xorg.libXScrnSaver
    xorg.libXcursor
    xorg.libXi
    vulkan-loader
    wayland
  ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  checkFlags = [
    # panicked at src/tests/timer_tests.rs:30:9
    "--skip=tests::timer_tests::timer_tests::test_split_task_input_basic"
  ];

  postFixup = lib.optionalString stdenv.hostPlatform.isLinux ''
    patchelf $out/bin/${finalAttrs.pname} \
      --add-rpath ${
        lib.makeLibraryPath [
          vulkan-loader
          libxkbcommon
          wayland
        ]
      }
  '';

  meta = {
>>>>>>> master
    description = "Track your time without being tracked";
    mainProgram = "furtherance";
<<<<<<< HEAD
    homepage = "https://github.com/lakoliu/Furtherance";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [ CaptainJawZ ];
||||||| 213fed0310e3
    homepage = "https://github.com/lakoliu/Furtherance";
    license = licenses.gpl3Plus;
    platforms = platforms.linux;
    maintainers = with maintainers; [ CaptainJawZ ];
=======
    homepage = "https://github.com/unobserved-io/Furtherance";
    license = lib.licenses.gpl3Plus;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [
      CaptainJawZ
      locnide
    ];
>>>>>>> master
  };
})
