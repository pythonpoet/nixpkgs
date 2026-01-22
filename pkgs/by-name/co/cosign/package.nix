{
  stdenv,
  lib,
  buildGoModule,
  fetchFromGitHub,
  pcsclite,
  pkg-config,
  installShellFiles,
  pivKeySupport ? true,
  pkcs11Support ? true,
  testers,
}:

buildGoModule (finalAttrs: {
  pname = "cosign";
<<<<<<< HEAD
  version = "3.0.3";
||||||| 213fed0310e3
  version = "3.0.2";
=======
  version = "3.0.4";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "sigstore";
    repo = "cosign";
    rev = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-2cCeSG3ELkSWL1ZJ/bMGm4Nj7OZgewyUwu8lblRjCh4=";
||||||| 213fed0310e3
    hash = "sha256-5jCO2LW7nzbzo+de0fpxBcVASDmINB6yFerkQZlo2o8=";
=======
    hash = "sha256-Ddq9MJNRZ+ywJwxIUP4nhag8UZIH/hOYnF71P3+gI/0=";
>>>>>>> master
  };

  buildInputs = lib.optional (stdenv.hostPlatform.isLinux && pivKeySupport) (lib.getDev pcsclite);

  nativeBuildInputs = [
    pkg-config
    installShellFiles
  ];

<<<<<<< HEAD
  vendorHash = "sha256-LTJoEEOGrmgQi+8T++wNMfs+jdWI+R+Xo1vBXuoLBMM=";
||||||| 213fed0310e3
  vendorHash = "sha256-hedkslhyAsictu9Cbw7CgreoWa1StLpTt8oTPNLr5fc=";
=======
  vendorHash = "sha256-TuA3LwZFAKjZ4aoX92tYd7eziG5N1vDOTsEgwhg5n6w=";
>>>>>>> master

  subPackages = [
    "cmd/cosign"
  ];

  tags =
    [ ] ++ lib.optionals pivKeySupport [ "pivkey" ] ++ lib.optionals pkcs11Support [ "pkcs11key" ];

  ldflags = [
    "-s"
    "-w"
    "-X sigs.k8s.io/release-utils/version.gitVersion=v${finalAttrs.version}"
    "-X sigs.k8s.io/release-utils/version.gitTreeState=clean"
  ];

  __darwinAllowLocalNetworking = true;

  preCheck = ''
    # test all paths
    unset subPackages
  '';

  checkFlags =
    let
      # Skip tests that require network access
      skippedTests = [
        "TestLoadCertsKeylessVerification/default_fulcio"
        "TestGetCTLogPubKeys"
        "TestGetRekorPubKeys"
        "TestVerifyEmbeddedSCT"
        "TestValidateAndUnpackCertWithSCT"
      ];
    in
    [ "-skip=^${builtins.concatStringsSep "$|^" skippedTests}$" ];

  postInstall = lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform) ''
    installShellCompletion --cmd cosign \
      --bash <($out/bin/cosign completion bash) \
      --fish <($out/bin/cosign completion fish) \
      --zsh <($out/bin/cosign completion zsh)
  '';

  passthru.tests.version = testers.testVersion {
    package = finalAttrs.finalPackage;
    command = "cosign version";
    version = "v${finalAttrs.version}";
  };

  meta = {
    homepage = "https://github.com/sigstore/cosign";
    changelog = "https://github.com/sigstore/cosign/releases/tag/v${finalAttrs.version}";
    description = "Container Signing CLI with support for ephemeral keys and Sigstore signing";
    mainProgram = "cosign";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
      lesuisse
      jk
      developer-guy
    ];
  };
})
