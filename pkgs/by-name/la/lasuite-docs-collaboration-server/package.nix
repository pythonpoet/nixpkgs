{
  lib,
  fetchFromGitHub,
  stdenv,
  fetchYarnDeps,
  nodejs,
  fixup-yarn-lock,
  yarn,
  yarnConfigHook,
  yarnBuildHook,
  makeWrapper,
}:

stdenv.mkDerivation rec {
  pname = "lasuite-docs-collaboration-server";
<<<<<<< HEAD
  version = "4.1.0";
||||||| 213fed0310e3
  version = "3.6.0";
=======
  version = "4.4.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "suitenumerique";
    repo = "docs";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-vZkqHlZ1aDOXcrdyV8BXmI95AmMalXOuVLS9XWB/YxU=";
||||||| 213fed0310e3
    hash = "sha256-8bD+rBEN0GEQz3tiPEQYmf/mpijPefFmQchGhYkVBVY=";
=======
    hash = "sha256-Cm/Ch7dBKInQYPFGfSlSMLgj8uQR6E3S+6gCFUyvFSU=";
>>>>>>> master
  };

  sourceRoot = "source/src/frontend";

  offlineCache = fetchYarnDeps {
    yarnLock = "${src}/src/frontend/yarn.lock";
<<<<<<< HEAD
    hash = "sha256-3yRKWIOPBRrOxBWUW3C5xFjb2dcA6c3cMOD8PZWjHNA=";
||||||| 213fed0310e3
    hash = "sha256-b4JBjJUB1i9jYSy+RFkXKmq6rzp28xHLdPNSH0QO1Ek=";
=======
    hash = "sha256-JacPecJvdyATea8o1jQOxY9Gzx4kH+HLqE0eq03dzjg=";
>>>>>>> master
  };

  nativeBuildInputs = [
    nodejs
    fixup-yarn-lock
    yarn
    yarnConfigHook
    yarnBuildHook
    makeWrapper
  ];

  yarnBuildScript = "COLLABORATION_SERVER";
  yarnBuildFlags = "run build";

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{lib,bin}
    cp -r {apps,node_modules,packages,servers} $out/lib

    makeWrapper ${lib.getExe nodejs} "$out/bin/docs-collaboration-server" \
      --add-flags "$out/lib/servers/y-provider/dist/start-server.js" \
      --set NODE_PATH "$out/lib/node_modules"

    runHook postInstall
  '';

  meta = {
    description = "Collaborative note taking, wiki and documentation platform that scales. Built with Django and React. Opensource alternative to Notion or Outline";
    homepage = "https://github.com/suitenumerique/docs";
    changelog = "https://github.com/suitenumerique/docs/blob/${src.tag}/CHANGELOG.md";
    mainProgram = "docs-collaboration-server";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ soyouzpanda ];
    platforms = lib.platforms.all;
  };
}
