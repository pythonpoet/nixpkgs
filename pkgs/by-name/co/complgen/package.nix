{
  fetchFromGitHub,
  lib,
  rustPlatform,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "complgen";
  version = "0.7.1";

  src = fetchFromGitHub {
    owner = "adaszko";
    repo = "complgen";
    tag = "v${finalAttrs.version}";
    hash = "sha256-fHSDYrfCoLQ4tU1DbrpD3iApufBv5qAGTIFri229pyE=";
  };

  cargoHash = "sha256-a6bGE2xxv8IdKlo98X8KNeQl8e//dc9pfaBgGHhx+5M=";

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  meta = {
    changelog = "https://github.com/adaszko/complgen/blob/v${finalAttrs.version}/CHANGELOG.md";
>>>>>>> master
    description = "Generate {bash,fish,zsh} completions from a single EBNF-like grammar";
    homepage = "https://github.com/adaszko/complgen";
<<<<<<< HEAD
    changelog = "https://github.com/adaszko/complgen/blob/${src.rev}/CHANGELOG.md";
    license = lib.licenses.asl20;
    maintainers = [ ];
||||||| 213fed0310e3
    changelog = "https://github.com/adaszko/complgen/blob/${src.rev}/CHANGELOG.md";
    license = licenses.asl20;
    maintainers = [ ];
=======
    license = lib.licenses.asl20;
    mainProgram = "complgen";
    maintainers = with lib.maintainers; [ hythera ];
>>>>>>> master
  };
})
