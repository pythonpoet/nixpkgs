{
  lib,
  stdenv,
  fetchFromGitHub,
<<<<<<< HEAD
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
||||||| 213fed0310e3
  pnpm_9,
=======
  pnpm_10,
  fetchPnpmDeps,
  pnpmConfigHook,
>>>>>>> master
  nodejs_22,
  versionCheckHook,
  nix-update-script,
}:
<<<<<<< HEAD
let
  pnpm' = pnpm_9.override { nodejs = nodejs_22; };
in
stdenv.mkDerivation rec {
||||||| 213fed0310e3
stdenv.mkDerivation rec {
=======
let
  pnpm' = pnpm_10.override { nodejs = nodejs_22; };
in
stdenv.mkDerivation (finalAttrs: {
>>>>>>> master
  pname = "tsx";
  version = "4.21.0";

  src = fetchFromGitHub {
    owner = "privatenumber";
    repo = "tsx";
    tag = "v${finalAttrs.version}";
    hash = "sha256-vlVRq637l84xi9Og0ryzYuu+1b/eBq13jQJIptY0u0o=";
  };

<<<<<<< HEAD
  pnpmDeps = fetchPnpmDeps {
    inherit
      pname
      version
      src
      ;
    pnpm = pnpm';
||||||| 213fed0310e3
  pnpmDeps = pnpm_9.fetchDeps {
    inherit pname version src;
=======
  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs)
      pname
      version
      src
      ;
    pnpm = pnpm';
>>>>>>> master
    fetcherVersion = 1;
    hash = "sha256-6ZizQtZC43yXrz634VXksRCKGkDKryICvT3Q+JCuIEw=";
  };

  nativeBuildInputs = [
    nodejs_22
    pnpmConfigHook
    pnpm'
  ];

  buildInputs = [
    nodejs_22
  ];

  patchPhase = ''
    runHook prePatch

    # by default pnpm builds the docs workspace and this was just
    #  the easiest way I found to stop that, as pnpmWorkspaces and
    #  other flags did not work
    rm pnpm-workspace.yaml

    # because tsx uses semantic-release, the package.json has a placeholder
    #  version number. this patches it to match the version of the nix package,
    #  which in turn is the release version in github.
    substituteInPlace package.json --replace-fail "0.0.0-semantic-release" "${finalAttrs.version}"

    runHook postPatch
  '';

  buildPhase = ''
    runHook preBuild

    pnpm run build

    # remove unneeded files
    find dist -type f \( -name '*.cts' -or -name '*.mts' -or -name '*.ts' \) -delete

    # remove devDependencies that are only required to build
    #  and package the typescript code
    CI=true pnpm prune --prod

    # Clean up broken symlinks left behind by `pnpm prune`
    # https://github.com/pnpm/pnpm/issues/3645
    find node_modules -xtype l -delete

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/{bin,lib/tsx}
    cp -r {dist,node_modules} $out/lib/tsx
    chmod +x $out/lib/tsx/dist/cli.mjs
    ln -s $out/lib/tsx/dist/cli.mjs $out/bin/tsx

    runHook postInstall
  '';

  # 8 / 85 tests are failing, I do not know why, while regular usage shows no issues.
  doCheck = false;
  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "TypeScript Execute (tsx): The easiest way to run TypeScript in Node.js";
    homepage = "https://tsx.is";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      sdedovic
      higherorderlogic
    ];
    mainProgram = "tsx";
  };
})
