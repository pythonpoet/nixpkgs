{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "jq-lsp";
<<<<<<< HEAD
  version = "0.1.15";
||||||| 213fed0310e3
  version = "0.1.14";
=======
  version = "0.1.16";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "wader";
    repo = "jq-lsp";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-5z5CTamk13QL50Hof2XeQ02NqRWMh4cECDhD6egGcnE=";
||||||| 213fed0310e3
    hash = "sha256-VWZZFa+mMFAbfHTrFqf5vEEqA20DiCz4VjX50mgTuzw=";
=======
    hash = "sha256-tuB5RxJSYGHLPPd3v0xrmqX6Ywxw6V8BQEHkkiAsBTA=";
>>>>>>> master
  };

  vendorHash = "sha256-pGXFuyYJPNcMEd0vPrmbdY/CeOF0AXwrNJEfrBBe4I0=";

  # based on https://github.com/wader/jq-lsp/blob/master/.goreleaser.yml
  env.CGO_ENABLED = 0;

  ldflags = [
    "-s"
    "-w"
    "-X main.version=${version}"
    "-X main.commit=${src.rev}"
    "-X main.builtBy=Nix"
  ];

  meta = {
    description = "jq language server";
    homepage = "https://github.com/wader/jq-lsp";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ sysedwinistrator ];
    mainProgram = "jq-lsp";
  };
}
