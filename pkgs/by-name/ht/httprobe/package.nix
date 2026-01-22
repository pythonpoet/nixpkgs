{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "httprobe";
  version = "0.2";

  src = fetchFromGitHub {
    owner = "tomnomnom";
    repo = "httprobe";
    rev = "v${version}";
    hash = "sha256-k/Ev+zpYF+DcnQvMbbRzoJ4co83q3pi/D9T4DhtGR/I=";
  };

  vendorHash = null;

  ldflags = [
    "-s"
    "-w"
  ];

  meta = {
    description = "Take a list of domains and probe for working HTTP and HTTPS servers";
    homepage = "https://github.com/tomnomnom/httprobe";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = [ ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = [ ];
=======
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.matthiasbeyer ];
>>>>>>> master
    mainProgram = "httprobe";
  };
}
