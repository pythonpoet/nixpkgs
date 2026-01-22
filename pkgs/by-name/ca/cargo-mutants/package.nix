{
  lib,
  rustPlatform,
  fetchFromGitHub,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-mutants";
  version = "26.0.0";

  src = fetchFromGitHub {
    owner = "sourcefrog";
    repo = "cargo-mutants";
    tag = "v${finalAttrs.version}";
    hash = "sha256-TtB+g5WgEqKP9sYJY3P/WDbpT9lD23RDi0/A7khwDIw=";
  };

  cargoHash = "sha256-FVwRS9OcQ0CjH8h10BzP7rTNHFIvefagIHMxVrfMaHo=";

  # too many tests require internet access
  doCheck = false;

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  passthru.updateScript = nix-update-script { };

  meta = {
>>>>>>> master
    description = "Mutation testing tool for Rust";
    mainProgram = "cargo-mutants";
    homepage = "https://github.com/sourcefrog/cargo-mutants";
<<<<<<< HEAD
    changelog = "https://github.com/sourcefrog/cargo-mutants/releases/tag/${src.rev}";
    license = lib.licenses.mit;
    maintainers = [ ];
||||||| 213fed0310e3
    changelog = "https://github.com/sourcefrog/cargo-mutants/releases/tag/${src.rev}";
    license = licenses.mit;
    maintainers = [ ];
=======
    changelog = "https://github.com/sourcefrog/cargo-mutants/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.progrm_jarvis ];
>>>>>>> master
  };
})
