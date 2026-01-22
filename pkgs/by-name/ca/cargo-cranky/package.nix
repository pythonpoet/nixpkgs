{
  lib,
  rustPlatform,
  fetchFromGitHub,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-cranky";
  version = "0.3.0";

  src = fetchFromGitHub {
    owner = "ericseppanen";
    repo = "cargo-cranky";
    tag = "v${finalAttrs.version}";
    hash = "sha256-3ARl3z+2nz05UaKf8ChN6mvPY2qMjUNxGnGJ1P0xkas=";
  };

  cargoHash = "sha256-m9n2YyrMpuz/X/kvHgn+g4w9/Pg+n6VnnfwjaOnyPvY=";

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  passthru.updateScript = nix-update-script { };

  meta = {
>>>>>>> master
    description = "Easy to configure wrapper for Rust's clippy";
    mainProgram = "cargo-cranky";
    homepage = "https://github.com/ericseppanen/cargo-cranky";
<<<<<<< HEAD
    changelog = "https://github.com/ericseppanen/cargo-cranky/releases/tag/${src.rev}";
    license = with lib.licenses; [
||||||| 213fed0310e3
    changelog = "https://github.com/ericseppanen/cargo-cranky/releases/tag/${src.rev}";
    license = with licenses; [
=======
    changelog = "https://github.com/ericseppanen/cargo-cranky/releases/tag/v${finalAttrs.version}";
    license = with lib.licenses; [
>>>>>>> master
      asl20
      mit
    ];
    maintainers = [ lib.maintainers.progrm_jarvis ];
  };
})
