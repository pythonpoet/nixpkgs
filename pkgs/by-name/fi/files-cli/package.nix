{
  lib,
  fetchFromGitHub,
  buildGoModule,
  testers,
  files-cli,
}:

buildGoModule rec {
  pname = "files-cli";
<<<<<<< HEAD
  version = "2.15.152";
||||||| 213fed0310e3
  version = "2.15.139";
=======
  version = "2.15.191";
>>>>>>> master

  src = fetchFromGitHub {
    repo = "files-cli";
    owner = "files-com";
    rev = "v${version}";
<<<<<<< HEAD
    hash = "sha256-0rXDVLr1V54+nXiqzhRsQJhF1JSreyQC9GcW3Sj2IcM=";
||||||| 213fed0310e3
    hash = "sha256-4G0obQC2USQY9dGdLoOhfp6OvUYXRk/CsGeZHLpoMjg=";
=======
    hash = "sha256-jObw+/lHjk7pm/RNsgeXBfQkK2lBrjCc1LlpM3re82M=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-BijznllCTXFgjADT/OZrgNYRM4aRXhxsIQu+jZngcFM=";
||||||| 213fed0310e3
  vendorHash = "sha256-doL9LiFwPQ1RO6ZJzIQ4IBol2/J+Tc7e8dGDEVdpMQo=";
=======
  vendorHash = "sha256-BRiLBXHeSFvzCi7i9kmXfuHjtorG72IIcUz3z3thg+8=";
>>>>>>> master

  ldflags = [
    "-s"
    "-w"
    "-X main.version=${version}"
  ];

  doInstallCheck = true;

  installCheckPhase = ''
    runHook preInstallCheck

    $out/bin/files-cli --help

    runHook postInstallCheck
  '';

  passthru.tests = {
    version = testers.testVersion {
      package = files-cli;
      command = "files-cli -v";
      version = "files-cli version ${version}";
    };
  };

  meta = {
    description = "Files.com Command Line App for Windows, Linux, and macOS";
    homepage = "https://developers.files.com";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ kashw2 ];
    mainProgram = "files-cli";
  };

}
