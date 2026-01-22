{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule (finalAttrs: {
  pname = "dnsproxy";
<<<<<<< HEAD
  version = "0.78.1";
||||||| 213fed0310e3
  version = "0.77.0";
=======
  version = "0.78.2";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "AdguardTeam";
    repo = "dnsproxy";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-MZeRCsFUQicTj4yAefCUxKSsJTqTJX8lyp6qnFaYFcM=";
||||||| 213fed0310e3
    hash = "sha256-xq/lhwGyVvhKFQqwgtdomi/pZyrTShI60Sz/fEplEIw=";
=======
    hash = "sha256-BZ9yiw5EoSLTZux/MC8MJLV9eifQYnz+ZBzAPZaxOPI=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-PZPwTUGd2uzXkcnjvhPFG121/837GAe/pVfaeM0VYfY=";
||||||| 213fed0310e3
  vendorHash = "sha256-Ti+dfz9f8xXpTmmVIUAuheBQzNnYUJ2QIb0IWotNzsA=";
=======
  vendorHash = "sha256-NS7MsK7QXg8tcAytYd9FGvaYZcReYkO5ESPpLbzL0IQ=";
>>>>>>> master

  ldflags = [
    "-s"
    "-w"
    "-X"
    "github.com/AdguardTeam/dnsproxy/internal/version.version=${finalAttrs.version}"
  ];

  # Development tool dependencies; not part of the main project
  excludedPackages = [ "internal/tools" ];

  doCheck = false;

  meta = {
    description = "Simple DNS proxy with DoH, DoT, and DNSCrypt support";
    homepage = "https://github.com/AdguardTeam/dnsproxy";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
      contrun
      diogotcorreia
    ];
    mainProgram = "dnsproxy";
  };
})
