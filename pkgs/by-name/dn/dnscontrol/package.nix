{
  lib,
  stdenv,
  buildGoModule,
  fetchFromGitHub,
  installShellFiles,
  versionCheckHook,
}:

buildGoModule (finalAttrs: {
  pname = "dnscontrol";
<<<<<<< HEAD
  version = "4.28.2";
||||||| 213fed0310e3
  version = "4.27.1";
=======
  version = "4.31.1";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "StackExchange";
    repo = "dnscontrol";
<<<<<<< HEAD
    tag = "v${finalAttrs.version}";
    hash = "sha256-+AEDtGlgHGA59OjylS4BIX0entyOx2/O6sNAeBSebDE=";
||||||| 213fed0310e3
    tag = "v${version}";
    hash = "sha256-OlXqX26aL08gft8sFPZrYBhf7U4DY46BYqli68xEPbg=";
=======
    tag = "v${finalAttrs.version}";
    hash = "sha256-c0jQF6XGg0jTMqBbTwRA/ZfD/qocCHILoSujeqJ+lp4=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-veD5CrXzoVCAMUtxJjC8tsfk8hFAlxVwEg+ny6kqzk8=";
||||||| 213fed0310e3
  vendorHash = "sha256-3JlPT0nL/FzjxH6aWZBwYaNetSEzzEv00/F7bsj4h0Y=";
=======
  vendorHash = "sha256-GMzLaV3LQNa4K111P6DLG28KAAgj9AHyPua4XSih14k=";
>>>>>>> master

  nativeBuildInputs = [ installShellFiles ];

  subPackages = [ "." ];

  ldflags = [
    "-s"
    "-X=github.com/StackExchange/dnscontrol/v${lib.versions.major finalAttrs.version}/pkg/version.version=${finalAttrs.version}"
  ];

  postInstall = lib.optionalString (stdenv.buildPlatform.canExecute stdenv.hostPlatform) ''
    installShellCompletion --cmd dnscontrol \
      --bash <($out/bin/dnscontrol shell-completion bash) \
      --zsh <($out/bin/dnscontrol shell-completion zsh)
  '';

  preCheck = ''
    # requires network
    rm pkg/spflib/flatten_test.go pkg/spflib/parse_test.go
  '';

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  versionCheckProgramArg = "version";
  doInstallCheck = true;

  meta = {
    description = "Synchronize your DNS to multiple providers from a simple DSL";
    homepage = "https://dnscontrol.org/";
    changelog = "https://github.com/StackExchange/dnscontrol/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      SuperSandro2000
      zowoq
    ];
    mainProgram = "dnscontrol";
  };
})
