{
  lib,
  buildGoModule,
  fetchFromGitHub,
  versionCheckHook,
  nix-update-script,
}:

buildGoModule (finalAttrs: {
  pname = "matrix-alertmanager-receiver";
<<<<<<< HEAD
  version = "2025.11.26";
||||||| 213fed0310e3
  version = "2025.11.12";
=======
  version = "2026.1.14";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "metio";
    repo = "matrix-alertmanager-receiver";
    tag = finalAttrs.version;
<<<<<<< HEAD
    hash = "sha256-VIyz+9flJeeXkLW2y5hoUMb73LdwM/VUu7mgyALYioU=";
||||||| 213fed0310e3
    hash = "sha256-xoTNn7Sa6OOIwLbpge6zZr6jy/kMsg937yFZu6olfzA=";
=======
    hash = "sha256-JUdnaz790NbiBlUlESIQMR2qehF/8OU0smSrA3+wOSQ=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-x0KpYURQQxNPFO9Pd9F+OQ/Xw6xIYRA4UyQkV0kxGGU=";
||||||| 213fed0310e3
  vendorHash = "sha256-hweQY/vXUbBxlZrN6ZK0NxoOL66CJyQ64rVII6OVXLk=";
=======
  vendorHash = "sha256-ZZYifNTMCL39ar00duYvvS8B6vJ8QZkMNb8vG6kgYOI=";
>>>>>>> master

  env.CGO_ENABLED = "0";

  ldflags = [
    "-s"
    "-X main.matrixAlertmanagerReceiverVersion=${finalAttrs.version}"
  ];

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  passthru = {
    updateScript = nix-update-script { };
  };

  meta = {
    description = "Alertmanager client that forwards alerts to a Matrix room";
    homepage = "https://github.com/metio/matrix-alertmanager-receiver";
    changelog = "https://github.com/metio/matrix-alertmanager-receiver/releases/tag/${finalAttrs.version}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ liberodark ];
    mainProgram = "matrix-alertmanager-receiver";
  };
})
