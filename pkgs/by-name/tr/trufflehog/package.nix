{
  lib,
  fetchFromGitHub,
  buildGoModule,
  versionCheckHook,
  makeWrapper,
}:

buildGoModule (finalAttrs: {
  pname = "trufflehog";
  version = "3.92.5";

  src = fetchFromGitHub {
    owner = "trufflesecurity";
    repo = "trufflehog";
    tag = "v${finalAttrs.version}";
    hash = "sha256-9nzcFw+7dpkSNAYy6Rh+qhhneO44tYCHEPPM2KDzs/4=";
  };

  vendorHash = "sha256-98yTB5Wu2W2xesg9NMPv+Yij/stutRSP98MeTf807Jo=";

  nativeBuildInputs = [ makeWrapper ];

  proxyVendor = true;

  nativeInstallCheckInputs = [ versionCheckHook ];

  ldflags = [
    "-s"
    "-w"
    "-X=github.com/trufflesecurity/trufflehog/v3/pkg/version.BuildVersion=${finalAttrs.version}"
  ];

  # Test cases run git clone and require network access
  doCheck = false;

  postInstall = ''
    rm $out/bin/{generate,snifftest}

    wrapProgram $out/bin/trufflehog --add-flags --no-update
  '';

  doInstallCheck = true;

<<<<<<< HEAD
  versionCheckProgramArg = "--version";

  meta = {
||||||| 213fed0310e3
  versionCheckProgramArg = "--version";

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    description = "Find credentials all over the place";
    homepage = "https://github.com/trufflesecurity/trufflehog";
<<<<<<< HEAD
    changelog = "https://github.com/trufflesecurity/trufflehog/releases/tag/v${version}";
    license = with lib.licenses; [ agpl3Only ];
    maintainers = with lib.maintainers; [
||||||| 213fed0310e3
    changelog = "https://github.com/trufflesecurity/trufflehog/releases/tag/v${version}";
    license = with licenses; [ agpl3Only ];
    maintainers = with maintainers; [
=======
    changelog = "https://github.com/trufflesecurity/trufflehog/releases/tag/${finalAttrs.src.tag}";
    license = with lib.licenses; [ agpl3Only ];
    maintainers = with lib.maintainers; [
>>>>>>> master
      fab
      sarcasticadmin
    ];
    mainProgram = "trufflehog";
  };
})
