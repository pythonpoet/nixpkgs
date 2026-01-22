{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nix-update-script,
  versionCheckHook,
  stdenv,
}:
buildGoModule (finalAttrs: {
  pname = "jjui";
<<<<<<< HEAD
  version = "0.9.8";
||||||| 213fed0310e3
  version = "0.9.6";
=======
  version = "0.9.10";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "idursun";
    repo = "jjui";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-YEEcSaIm21IUp7EFdYvDG2h55YIqzghYdGxdXmZnp9I=";
||||||| 213fed0310e3
    hash = "sha256-sLOQa9IoRcYEXcShiE/vdjJknQcDwefVwHii63MPXpw=";
=======
    hash = "sha256-Hsuyf5VcSZcNi2gmubXS47uRarL17oPEtorisY75bbM=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-2TlJJY/eM6yYFOdq8CcH9l2lFHJmFrihuGwLS7jMwJ0=";
||||||| 213fed0310e3
  vendorHash = "sha256-SMeS1FHc8UdXaxF9A8eYFkWQIM0hgWfBpuX+DsBglcw=";
=======
  vendorHash = "sha256-jte0g+aUiGNARLi8DyfsX6wYYJnodHnILzmid6KvMiA=";
>>>>>>> master

  ldflags = [ "-X main.Version=${finalAttrs.version}" ];

  checkFlags = lib.optionals stdenv.hostPlatform.isDarwin [
    "-skip=TestServerAskpass"
  ];

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "-version";

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "TUI for Jujutsu VCS";
    homepage = "https://github.com/idursun/jjui";
    changelog = "https://github.com/idursun/jjui/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      adda
    ];
    mainProgram = "jjui";
  };
})
