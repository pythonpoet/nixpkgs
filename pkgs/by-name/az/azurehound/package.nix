{
  lib,
  stdenv,
  buildGoModule,
  fetchFromGitHub,
  versionCheckHook,
}:

buildGoModule (finalAttrs: {
  pname = "azurehound";
<<<<<<< HEAD
  version = "2.8.2";
||||||| 213fed0310e3
  version = "2.8.1";
=======
  version = "2.8.3";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "SpecterOps";
    repo = "AzureHound";
<<<<<<< HEAD
    tag = "v${version}";
    hash = "sha256-eXcHBwWjZhpKwUK+sSXEDFiiBlBD+b6E50cV3QX38fw=";
||||||| 213fed0310e3
    tag = "v${version}";
    hash = "sha256-xJcztNSYVTDyoRahROxBwIqq28GLhwqmIxHwDPX7Xho=";
=======
    tag = "v${finalAttrs.version}";
    hash = "sha256-ecLpNIYczim4dLbNwkOtwieJrjoSOXv4KHvSMuMjOw0=";
>>>>>>> master
  };

  vendorHash = "sha256-+iNFWKFNON4HX2mf4O29zAdElEkIGIx55Wi9MRtg1dg=";

  nativeInstallCheckInputs = [ versionCheckHook ];

  ldflags = [
    "-s"
    "-w"
    "-X=github.com/bloodhoundad/azurehound/v2/constants.Version=${finalAttrs.version}"
  ];

  doInstallCheck = true;

  meta = {
    description = "Azure Data Exporter for BloodHound";
    homepage = "https://github.com/SpecterOps/AzureHound";
    changelog = "https://github.com/SpecterOps/AzureHound/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ fab ];
    mainProgram = "azurehound";
    broken = stdenv.hostPlatform.isDarwin;
  };
})
