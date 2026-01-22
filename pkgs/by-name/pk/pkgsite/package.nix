{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nix-update-script,
}:

buildGoModule {
  pname = "pkgsite";
<<<<<<< HEAD
  version = "0-unstable-2025-11-28";
||||||| 213fed0310e3
  version = "0-unstable-2025-11-20";
=======
  version = "0-unstable-2026-01-16";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "golang";
    repo = "pkgsite";
<<<<<<< HEAD
    rev = "d74adeade195e94064b1dc38fd14b93037ad7694";
    hash = "sha256-Rlm5XwOLjGYOtg12tlUtkd2+upY2EP7x5dI+Nx2JAF0=";
||||||| 213fed0310e3
    rev = "84333735ffe124f7bd904805fd488b93841de49f";
    hash = "sha256-XYySnVvnNZr1tg46AoYBsmeT5y/StByWcQhnNOdoLJo=";
=======
    rev = "550788255d99f0e9ee169f12bf65d16e1ede9f7b";
    hash = "sha256-Gx4MKLQ7Ed8XIy9oULWD1mRVcD2f7i+fb2aDjFrG9RI=";
>>>>>>> master
  };

  vendorHash = "sha256-udLOOjBMLZ38jrX/7r+hmiUr/k6gxU0Sypo6S0ezep0=";

  subPackages = [ "cmd/pkgsite" ];

  ldflags = [ "-s" ];

  passthru.updateScript = nix-update-script { extraArgs = [ "--version=branch" ]; };

  meta = {
    description = "Official tool to extract and generate documentation for Go projects like pkg.go.dev";
    homepage = "https://github.com/golang/pkgsite";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ phanirithvij ];
    mainProgram = "pkgsite";
  };
}
