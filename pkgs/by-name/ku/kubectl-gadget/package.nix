{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "kubectl-gadget";
  version = "0.48.0";

  src = fetchFromGitHub {
    owner = "inspektor-gadget";
    repo = "inspektor-gadget";
    tag = "v${version}";
    hash = "sha256-g2nJYiGukgi6CEhIJRuqqpPT9XbfQGFVmQD4Ne8gul0=";
  };

  vendorHash = "sha256-FLWpvCHeZUnlGZM1lxNoArqfSP2iQuYnhBRtD2ymclI=";

  env.CGO_ENABLED = 0;

  ldflags = [
    "-s"
    "-w"
    "-X github.com/inspektor-gadget/inspektor-gadget/internal/version.version=v${version}"
    "-X main.gadgetimage=ghcr.io/inspektor-gadget/inspektor-gadget:v${version}"
    "-extldflags=-static"
  ];

  tags = [
    "withoutebpf"
  ];

  subPackages = [ "cmd/kubectl-gadget" ];

  meta = {
    description = "Collection of gadgets for troubleshooting Kubernetes applications using eBPF";
    mainProgram = "kubectl-gadget";
    homepage = "https://inspektor-gadget.io";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = with maintainers; [
=======
    changelog = "https://github.com/inspektor-gadget/inspektor-gadget/releases/tag/${src.tag}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [
>>>>>>> master
      kranurag7
      devusb
    ];
  };
}
