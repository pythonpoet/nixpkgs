{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nix-update-script,
  makeWrapper,
  openssh,
  libxcrypt,
  testers,
  shellhub-agent,
}:

buildGoModule rec {
  pname = "shellhub-agent";
<<<<<<< HEAD
  version = "0.21.3";
||||||| 213fed0310e3
  version = "0.20.1";
=======
  version = "0.21.5";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "shellhub-io";
    repo = "shellhub";
    rev = "v${version}";
<<<<<<< HEAD
    hash = "sha256-C6ez20eTMGGvORqB00F3mSciExlOmcG7iKvz9F3Sls8=";
||||||| 213fed0310e3
    hash = "sha256-VO8uQ5tXYK1k1WZiJAq8/VcvCiCcbjzGMDWfZwKSw9w=";
=======
    hash = "sha256-0adBDz9oHb+Wo1/BucMPavX/4xZidjQYNVA3O475JEo=";
>>>>>>> master
  };

  modRoot = "./agent";

<<<<<<< HEAD
  vendorHash = "sha256-sXyM9tPsIW+x5zjiah1sr+iGq2JC2VcLHKvoFW6yr3M=";
||||||| 213fed0310e3
  vendorHash = "sha256-BAZ/rZqI51FYAHLcxbsPQofeNvRZRWihWAMEf91DDHI=";
=======
  vendorHash = "sha256-zBT3kQhn6RhgcP/5FBEhKo1oPl9GgFQqWGsBUgrDwW4=";
>>>>>>> master

  ldflags = [
    "-s"
    "-w"
    "-X main.AgentVersion=v${version}"
  ];

  passthru = {
    updateScript = nix-update-script { };

    tests.version = testers.testVersion {
      package = shellhub-agent;
      command = "agent --version";
      version = "v${version}";
    };
  };

  nativeBuildInputs = [ makeWrapper ];
  buildInputs = [ libxcrypt ];

  postInstall = ''
    wrapProgram $out/bin/agent --prefix PATH : ${lib.makeBinPath [ openssh ]}
  '';

  meta = {
    description = "Enables easy access any Linux device behind firewall and NAT";
    longDescription = ''
      ShellHub is a modern SSH server for remotely accessing Linux devices via
      command line (using any SSH client) or web-based user interface, designed
      as an alternative to _sshd_. Think ShellHub as centralized SSH for the the
      edge and cloud computing.
    '';
    homepage = "https://shellhub.io/";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ otavio ];
    platforms = lib.platforms.linux;
    mainProgram = "agent";
  };
}
