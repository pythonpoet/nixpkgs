{
  lib,
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  openssl,
  stdenv,
  curl,
  versionCheckHook,
  nix-update-script,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "cargo-tarpaulin";
  version = "0.35.1";

  src = fetchFromGitHub {
    owner = "xd009642";
    repo = "tarpaulin";
    tag = finalAttrs.version;
    hash = "sha256-l4Sn9EkIphBSEUfuRPhCRPtNENiGyP7lQcN4lx2Osks=";
  };

  cargoHash = "sha256-lHYYDdlm+axyuGY2ulPmuLhVu6p5u6JAf2x6Xcpo8Dc=";

  nativeBuildInputs = [
    pkg-config
  ];
  buildInputs = [
    openssl
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [
    curl
  ];

  doCheck = false;

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "--version";

  passthru.updateScript = nix-update-script { };

  meta = {
>>>>>>> master
    description = "Code coverage tool for Rust projects";
    mainProgram = "cargo-tarpaulin";
    homepage = "https://github.com/xd009642/tarpaulin";
<<<<<<< HEAD
    changelog = "https://github.com/xd009642/tarpaulin/blob/${src.rev}/CHANGELOG.md";
    license = with lib.licenses; [
||||||| 213fed0310e3
    changelog = "https://github.com/xd009642/tarpaulin/blob/${src.rev}/CHANGELOG.md";
    license = with licenses; [
=======
    changelog = "https://github.com/xd009642/tarpaulin/blob/${finalAttrs.version}/CHANGELOG.md";
    license = with lib.licenses; [
>>>>>>> master
      mit # or
      asl20
    ];
    maintainers = with lib.maintainers; [
      hugoreeves
      progrm_jarvis
    ];
  };
})
