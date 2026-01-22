{
  buildNpmPackage,
  fetchFromGitHub,
  lib,
  makeBinaryWrapper,
<<<<<<< HEAD
  nodejs_24,
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
||||||| 213fed0310e3
  nodejs_24,
  pnpm_9,
=======
  nodejs,
  pnpm,
  fetchPnpmDeps,
  pnpmConfigHook,
>>>>>>> master
  versionCheckHook,
}:
<<<<<<< HEAD
let
  buildNpmPackage' = buildNpmPackage.override { nodejs = nodejs_24; };
  pnpm' = pnpm_9.override { nodejs = nodejs_24; };
in
buildNpmPackage' (finalAttrs: {
||||||| 213fed0310e3
let
  buildNpmPackage' = buildNpmPackage.override { nodejs = nodejs_24; };
in
buildNpmPackage' (finalAttrs: {
=======

buildNpmPackage (finalAttrs: {
>>>>>>> master
  pname = "claude-code-router";
  version = "2.0.0";

  src = fetchFromGitHub {
    owner = "musistudio";
    repo = "claude-code-router";
    tag = "v${finalAttrs.version}";
    hash = "sha256-Pw+MkOr/yN3Oq88YtpHqYHNQx3AZD/UcJZ1xdcX3DZ8=";
  };

  postPatch = ''
    substituteInPlace packages/cli/src/{cli.ts,utils/index.ts} \
      --replace-fail '"node"' '"${lib.getExe nodejs}"'
  '';

  npmDeps = null;
<<<<<<< HEAD
  pnpmDeps = fetchPnpmDeps {
||||||| 213fed0310e3
  pnpmDeps = pnpm_9.fetchDeps {
=======
  pnpmDeps = fetchPnpmDeps {
    inherit pnpm;
>>>>>>> master
    inherit (finalAttrs) pname src;
<<<<<<< HEAD
    pnpm = pnpm';
    fetcherVersion = 2;
    hash = "sha256-BLPGTbDvvI40kuXfE/p3+s9hkE0reXr7OJA6UGXN4ys=";
||||||| 213fed0310e3
    fetcherVersion = 2;
    hash = "sha256-BLPGTbDvvI40kuXfE/p3+s9hkE0reXr7OJA6UGXN4ys=";
=======
    fetcherVersion = 3;
    hash = "sha256-8184F3ShoC6j7nov35CSZWz2dzPFQC7Bty1iTNs1qzc=";
>>>>>>> master
  };

  nativeBuildInputs = [
    makeBinaryWrapper
<<<<<<< HEAD
    pnpm'
||||||| 213fed0310e3
    pnpm_9.configHook
=======
    pnpm
>>>>>>> master
  ];

<<<<<<< HEAD
  npmConfigHook = pnpmConfigHook;

  buildPhase = ''
    runHook preBuild

    esbuild src/cli.ts --bundle --platform=node --outfile=dist/cli.js

    runHook postBuild
  '';
||||||| 213fed0310e3
  npmConfigHook = pnpm_9.configHook;

  buildPhase = ''
    runHook preBuild

    esbuild src/cli.ts --bundle --platform=node --outfile=dist/cli.js

    runHook postBuild
  '';
=======
  npmConfigHook = pnpmConfigHook;
>>>>>>> master

  installPhase = ''
    runHook preInstall

    mkdir -p $out/lib/claude-code-router
    cp -r dist $out/lib/claude-code-router

    mkdir -p $out/bin
    makeBinaryWrapper ${lib.getExe nodejs} $out/bin/ccr \
      --add-flags "$out/lib/claude-code-router/dist/cli.js"

    runHook postInstall
  '';

  doInstallCheck = true;
  nativeInstallCheckInputs = [ versionCheckHook ];
  versionCheckProgramArg = "-v";

<<<<<<< HEAD
  passthru.ui = buildNpmPackage' (finalAttrs': {
    pname = finalAttrs.pname + "-ui";
    inherit (finalAttrs) version src;

    sourceRoot = "${finalAttrs'.src.name}/ui";

    npmDeps = null;
    pnpmDeps = fetchPnpmDeps {
      inherit (finalAttrs') pname src sourceRoot;
      pnpm = pnpm';
      fetcherVersion = 2;
      hash = "sha256-ZjYLUec9EADQmKfju8hMbq0y4f1TDVwjbe3yw8Gh4Ac=";
    };

    nativeBuildInputs = [
      pnpm'
    ];

    npmConfigHook = pnpmConfigHook;

    installPhase = ''
      runHook preInstall

      mkdir -p $out
      cp dist/index.html $out/

      runHook postInstall
    '';
  });

||||||| 213fed0310e3
  passthru.ui = buildNpmPackage' (finalAttrs': {
    pname = finalAttrs.pname + "-ui";
    inherit (finalAttrs) version src;

    sourceRoot = "${finalAttrs'.src.name}/ui";

    npmDeps = null;
    pnpmDeps = pnpm_9.fetchDeps {
      inherit (finalAttrs') pname src sourceRoot;
      fetcherVersion = 2;
      hash = "sha256-ZjYLUec9EADQmKfju8hMbq0y4f1TDVwjbe3yw8Gh4Ac=";
    };

    nativeBuildInputs = [
      pnpm_9.configHook
    ];

    npmConfigHook = pnpm_9.configHook;

    installPhase = ''
      runHook preInstall

      mkdir -p $out
      cp dist/index.html $out/

      runHook postInstall
    '';
  });

=======
>>>>>>> master
  meta = {
    description = "Tool to route Claude Code requests to different models and customize any request";
    homepage = "https://github.com/musistudio/claude-code-router";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      prince213
    ];
    mainProgram = "ccr";
  };
})
