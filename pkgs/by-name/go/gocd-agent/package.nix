{
  lib,
  stdenv,
  fetchurl,
  unzip,
  nixosTests,
}:

stdenv.mkDerivation rec {
  pname = "gocd-agent";
  version = "23.1.0";
  rev = "16079";

  src = fetchurl {
    url = "https://download.go.cd/binaries/${version}-${rev}/generic/go-agent-${version}-${rev}.zip";
    sha256 = "sha256-L2MOkbVHoQu99lKrbnsNkhuU0SZ8VANSK72GZrGLbiQ=";
  };

  passthru.tests = { inherit (nixosTests) gocd-agent; };

  meta = {
    description = "Continuous delivery server specializing in advanced workflow modeling and visualization";
    homepage = "http://www.go.cd";
    license = lib.licenses.asl20;
    platforms = lib.platforms.all;
    sourceProvenance = with lib.sourceTypes; [
      binaryBytecode
      binaryNativeCode
    ];
<<<<<<< HEAD
    maintainers = with lib.maintainers; [
      grahamc
||||||| 213fed0310e3
    maintainers = with maintainers; [
      grahamc
=======
    maintainers = with lib.maintainers; [
>>>>>>> master
      swarren83
    ];
  };

  nativeBuildInputs = [ unzip ];

  buildCommand = "
    unzip $src -d $out
    mv $out/go-agent-${version} $out/go-agent
  ";
}
