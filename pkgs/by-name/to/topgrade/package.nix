{
  stdenv,
  lib,
  fetchFromGitHub,
  rustPlatform,
  installShellFiles,
}:

rustPlatform.buildRustPackage rec {
  pname = "topgrade";
<<<<<<< HEAD
  version = "16.6.1";
||||||| 213fed0310e3
  version = "16.4.2";
=======
  version = "16.8.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "topgrade-rs";
    repo = "topgrade";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-HOMCk88PrngnrBUGw3cBo8ZEh2Qez/+fmuK1I+tTevc=";
||||||| 213fed0310e3
    hash = "sha256-ugRzrdm83e5ihsOkJmOFjLnmx1+icAndqWm5j3gH3qI=";
=======
    hash = "sha256-6TimSkPxmDvXAPDlLbPYpnXg20dTbBKzv1Lj0tI973U=";
>>>>>>> master
  };

<<<<<<< HEAD
  cargoHash = "sha256-+aH73WsAuE1BWWJo12X7dCF54uXG452ITonWfp16vWY=";
||||||| 213fed0310e3
  cargoHash = "sha256-TUoRSGpSDCKJsC0XyvdjMEq1MiERyQQoAdIsEqotAKc=";
=======
  cargoHash = "sha256-DehLOUrqxGvlNw/12PyDOtyGuZThx/jqqjmKltqk7Ck=";
>>>>>>> master

  nativeBuildInputs = [
    installShellFiles
  ];

  env.NIX_CFLAGS_COMPILE = toString (
    lib.optionals stdenv.hostPlatform.isDarwin [
      "-framework"
      "AppKit"
    ]
  );

  postInstall = lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform) ''
    installShellCompletion --cmd topgrade \
      --bash <($out/bin/topgrade --gen-completion bash) \
      --fish <($out/bin/topgrade --gen-completion fish) \
      --zsh <($out/bin/topgrade --gen-completion zsh)

    $out/bin/topgrade --gen-manpage > topgrade.8
    installManPage topgrade.8
  '';

  meta = {
    description = "Upgrade all the things";
    homepage = "https://github.com/topgrade-rs/topgrade";
    changelog = "https://github.com/topgrade-rs/topgrade/releases/tag/v${version}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [
      SuperSandro2000
      xyenon
    ];
    mainProgram = "topgrade";
  };
}
