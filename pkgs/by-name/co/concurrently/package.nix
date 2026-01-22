{
  lib,
  stdenv,
  fetchFromGitHub,
  makeWrapper,
  nodejs,
<<<<<<< HEAD
  pnpm_8,
  fetchPnpmDeps,
  pnpmConfigHook,
||||||| 213fed0310e3
  pnpm_8,
=======
  pnpm_10,
  fetchPnpmDeps,
  pnpmConfigHook,
  versionCheckHook,
  nix-update-script,
>>>>>>> master
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "concurrently";
  version = "9.2.1";

  src = fetchFromGitHub {
    owner = "open-cli-tools";
    repo = "concurrently";
    tag = "v${finalAttrs.version}";
    hash = "sha256-PKbrYgQ6D0vxMSxx+aHBo09NJZh5YYfb9Fx9L5Ue8vM=";
  };

  pnpmDeps = fetchPnpmDeps {
    inherit (finalAttrs)
      pname
      version
      src
      ;
<<<<<<< HEAD
    pnpm = pnpm_8;
    fetcherVersion = 1;
    hash = "sha256-F1teWIABkK0mqZcK3RdGNKmexI/C59QWSrrD1jYbHt0=";
||||||| 213fed0310e3
    fetcherVersion = 1;
    hash = "sha256-F1teWIABkK0mqZcK3RdGNKmexI/C59QWSrrD1jYbHt0=";
=======
    pnpm = pnpm_10;
    fetcherVersion = 3;
    hash = "sha256-UVsmOneTICl3Ybmv7ebebkXmr1qwNh17dPhL0qlPgyg=";
>>>>>>> master
  };

  nativeBuildInputs = [
    makeWrapper
    nodejs
<<<<<<< HEAD
    pnpmConfigHook
    pnpm_8
||||||| 213fed0310e3
    pnpm.configHook
=======
    pnpmConfigHook
    pnpm_10
>>>>>>> master
  ];

  buildPhase = ''
    runHook preBuild

    pnpm build

    runHook postBuild
  '';

  preInstall = ''
    # remove unnecessary files
    CI=true pnpm --ignore-scripts --prod prune
    find -type f \( -name "*.ts" -o -name "*.map" \) -exec rm -rf {} +
    # https://github.com/pnpm/pnpm/issues/3645
    find node_modules -xtype l -delete

    # remove non-deterministic files
    rm node_modules/{.modules.yaml,.pnpm-workspace-state-v1.json}
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p "$out/bin" "$out/lib/concurrently"
    cp -r dist node_modules "$out/lib/concurrently"
    makeWrapper "${lib.getExe nodejs}" "$out/bin/concurrently" \
      --add-flags "$out/lib/concurrently/dist/bin/concurrently.js"
    ln -s "$out/bin/concurrently" "$out/bin/con"
    cp package.json "$out/lib/concurrently/"

    runHook postInstall
  '';

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  versionCheckProgramArg = "--version";
  doInstallCheck = true;

  passthru.updateScript = nix-update-script { };

  meta = {
    changelog = "https://github.com/open-cli-tools/concurrently/releases/tag/v${finalAttrs.version}";
    description = "Run commands concurrently";
    homepage = "https://github.com/open-cli-tools/concurrently";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ jpetrucciani ];
    mainProgram = "concurrently";
  };
})
