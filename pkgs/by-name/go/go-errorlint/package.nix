{
  lib,
  buildGoModule,
  fetchFromGitea,
  nix-update-script,
}:

buildGoModule rec {
  pname = "go-errorlint";
  version = "1.9.0";

  src = fetchFromGitea {
    domain = "codeberg.org";
    owner = "polyfloyd";
    repo = "go-errorlint";
    rev = "v${version}";
    hash = "sha256-79hbXvLnlry2j1mmeHoEx1PRIRd0iRbzN6BDnUyFV+4=";
  };

  vendorHash = "sha256-U/19X5iY7IHOHkbTADT4ueCJBPh/ryI4PCfg8ZbMLzU=";

  ldflags = [
    "-s"
    "-w"
  ];

  passthru.updateScript = nix-update-script { };
<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======

  meta = {
>>>>>>> master
    description = "Source code linter that can be used to find code that will cause problems with Go's error wrapping scheme";
<<<<<<< HEAD
    homepage = "https://github.com/polyfloyd/go-errorlint";
    changelog = "https://github.com/polyfloyd/go-errorlint/blob/${src.rev}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
||||||| 213fed0310e3
    homepage = "https://github.com/polyfloyd/go-errorlint";
    changelog = "https://github.com/polyfloyd/go-errorlint/blob/${src.rev}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [
=======
    homepage = "https://codeberg.org/polyfloyd/go-errorlint";
    changelog = "https://codeberg.org/polyfloyd/go-errorlint/src/tag/${src.rev}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
>>>>>>> master
      meain
      polyfloyd
    ];
    mainProgram = "go-errorlint";
  };
}
