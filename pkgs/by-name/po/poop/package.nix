{
  lib,
  stdenv,
  fetchFromGitHub,
  zig_0_13,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "poop";
  version = "0.5.0";

  src = fetchFromGitHub {
    owner = "andrewrk";
    repo = "poop";
    tag = finalAttrs.version;
    hash = "sha256-zrqR/TTELhsBIX42PysFsHPRs8Lx/zHcmi+VMDw1SdQ=";
  };

  nativeBuildInputs = [
    zig_0_13
  ];

  meta = {
    description = "Compare the performance of multiple commands with a colorful terminal user interface";
    homepage = "https://github.com/andrewrk/poop";
<<<<<<< HEAD
    changelog = "https://github.com/andrewrk/poop/releases/tag/${src.rev}";
    license = lib.licenses.mit;
    maintainers = [ ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    changelog = "https://github.com/andrewrk/poop/releases/tag/${src.rev}";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.linux;
=======
    changelog = "https://github.com/andrewrk/poop/releases/tag/${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ puiyq ];
    platforms = lib.platforms.linux;
>>>>>>> master
    mainProgram = "poop";
  };
})
