{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule (finalAttrs: {
  pname = "grafana-image-renderer";
<<<<<<< HEAD
  version = "5.0.11";
||||||| 213fed0310e3
  version = "5.0.10";
=======
  version = "5.2.3";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "grafana";
    repo = "grafana-image-renderer";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-fHIxtIRCxxJVHUA3r1ddCpOAsJ8QCJoCbUWagFcj4+I=";
||||||| 213fed0310e3
    hash = "sha256-oWJlb1mV1sNgN7EQ8L4msfnKps5oV60JgwZYpAJQaq4=";
=======
    hash = "sha256-YoJ50PhpxXQLpZpq+fLiN2uYU1C6w8C2UVun/klee4E=";
>>>>>>> master
  };

  vendorHash = "sha256-kGLvstSkucM0tN5l+Vp78IP9EwDx62kukAiOwYD4Vfs=";

  postPatch = ''
    substituteInPlace go.mod --replace-fail 'go 1.25.5' 'go 1.25.4'
  '';

  subPackages = [ "." ];

  meta = {
    homepage = "https://github.com/grafana/grafana-image-renderer";
    description = "Grafana backend plugin that handles rendering of panels & dashboards to PNGs using headless browser (Chromium/Chrome)";
    mainProgram = "grafana-image-renderer";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ ma27 ];
  };
})
