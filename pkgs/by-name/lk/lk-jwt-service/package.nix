{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nixosTests,
}:

buildGoModule (finalAttrs: {
  pname = "lk-jwt-service";
<<<<<<< HEAD
  version = "0.4.0";
||||||| 213fed0310e3
  version = "0.3.0";
=======
  version = "0.4.1";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "element-hq";
    repo = "lk-jwt-service";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-Qb+6DzaObeNjV+XVXLR6GkgtodIVTqTxC4G4Ef2xFrE=";
||||||| 213fed0310e3
    hash = "sha256-fA33LZkozPTng47kunXWkfUExVbMZsiL8Dtkm1hLV6U=";
=======
    hash = "sha256-x3QYq+PT0MFcRR50CG4NpCxv5KkoCLWzUEkPSdQnZX0=";
>>>>>>> master
  };

  vendorHash = "sha256-GJKSvdv41rRSCGVAgUDxHdXoxRj/h+eDktjRJ3O5QFE=";

  passthru.tests = nixosTests.lk-jwt-service;

  meta = {
    changelog = "https://github.com/element-hq/lk-jwt-service/releases/tag/${finalAttrs.src.tag}";
    description = "Minimal service to issue LiveKit JWTs for MatrixRTC";
    homepage = "https://github.com/element-hq/lk-jwt-service";
    license = lib.licenses.agpl3Plus;
    maintainers = with lib.maintainers; [ kilimnik ];
    mainProgram = "lk-jwt-service";
  };
})
