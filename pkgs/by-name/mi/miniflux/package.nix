{
  lib,
  buildGoModule,
  fetchFromGitHub,
  installShellFiles,
  nixosTests,
  nix-update-script,
}:

buildGoModule (finalAttrs: {
  pname = "miniflux";
<<<<<<< HEAD
  version = "2.2.15";
||||||| 213fed0310e3
  version = "2.2.14";
=======
  version = "2.2.16";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "miniflux";
    repo = "v2";
    tag = finalAttrs.version;
<<<<<<< HEAD
    hash = "sha256-19i+TeBcPnI1Gfpf81gHE9sLvytsS4x1A5XU8oD7YIU=";
||||||| 213fed0310e3
    hash = "sha256-x6I5PMlQtsjvFtEyoaKKE6if3I0IBIyps4kPQL4c8aw=";
=======
    hash = "sha256-mJ0FgoTm/SzS/T6xcLk232Xs3TgaDQahib4BeWzNfAk=";
>>>>>>> master
  };

  vendorHash = "sha256-XrTmXAUABlTQaA3Z0vU0HQW5Q1e/Yg6yq690oZH8M+A=";

  nativeBuildInputs = [ installShellFiles ];

  # skip tests that require network access
  checkFlags = [ "-skip=TestResolvesToPrivateIP" ];

  ldflags = [
    "-s"
    "-w"
    "-X miniflux.app/v2/internal/version.Version=${finalAttrs.version}"
  ];

  postInstall = ''
    mv $out/bin/miniflux.app $out/bin/miniflux
    installManPage miniflux.1
  '';

  passthru = {
    tests = nixosTests.miniflux;
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Minimalist and opinionated feed reader";
    changelog = "https://miniflux.app/releases/${finalAttrs.version}.html";
    homepage = "https://miniflux.app/";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
      rvolosatovs
      benpye
      emilylange
      adamcstephens
    ];
    mainProgram = "miniflux";
  };
})
