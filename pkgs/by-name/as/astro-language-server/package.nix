{
  lib,
  stdenv,
  fetchFromGitHub,
<<<<<<< HEAD
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
  nodejs_22,
||||||| 213fed0310e3
  pnpm_9,
  nodejs_22,
=======
  pnpm_10,
  fetchPnpmDeps,
  pnpmConfigHook,
  nodejs,
  nix-update-script,
>>>>>>> master
}:
stdenv.mkDerivation (finalAttrs: {
  pname = "astro-language-server";
  version = "2.16.3";

  src = fetchFromGitHub {
    owner = "withastro";
    repo = "astro";
    rev = "@astrojs/language-server@${finalAttrs.version}";
    hash = "sha256-ONpSW6VMoiW1Q0Aa5Dp1pZx3LAQ2Kzv5YHKxHOxbXdo=";
  };

<<<<<<< HEAD
  pnpmDeps = fetchPnpmDeps {
||||||| 213fed0310e3
  pnpmDeps = pnpm_9.fetchDeps {
=======
  # https://pnpm.io/filtering#--filter-package_name-1
  pnpmWorkspaces = [ "@astrojs/language-server..." ];
  prePnpmInstall = ''
    pnpm config set dedupe-peer-dependents false
    pnpm approve-builds @emmetio/css-parser
  '';

  pnpmDeps = fetchPnpmDeps {
>>>>>>> master
    inherit (finalAttrs)
      pname
      version
      src
      pnpmWorkspaces
      prePnpmInstall
      ;
<<<<<<< HEAD
    pnpm = pnpm_9;
    fetcherVersion = 1;
    hash = "sha256-tlpk+wbLjJqt37lu67p2A2RZAR1ZfnZFiYoqIQwvWPQ=";
||||||| 213fed0310e3
    fetcherVersion = 1;
    hash = "sha256-tlpk+wbLjJqt37lu67p2A2RZAR1ZfnZFiYoqIQwvWPQ=";
=======
    pnpm = pnpm_10;
    fetcherVersion = 2;
    hash = "sha256-Kqw4W3ZWRHWNnJYLGks9IHjCYAYEIigskwb//yKvb6c=";
>>>>>>> master
  };

  nativeBuildInputs = [
<<<<<<< HEAD
    nodejs_22
    pnpmConfigHook
    pnpm_9
||||||| 213fed0310e3
    nodejs_22
    pnpm_9.configHook
=======
    nodejs
    pnpmConfigHook
    pnpm_10
>>>>>>> master
  ];

  buildInputs = [ nodejs ];

  buildPhase = ''
    runHook preBuild

    pnpm --filter "@astrojs/language-server..." build

    runHook postBuild
  '';

  env.CI = true;

  installPhase = ''
    runHook preInstall

    pnpm install --offline --prod --filter="@astrojs/language-server..."
    mkdir -p $out/{bin,lib/node_modules/astro-language-server/packages/language-tools}
    cp -r ./node_modules $out/lib/node_modules/astro-language-server
    cp -r packages/language-tools/{language-server,yaml2ts} $out/lib/node_modules/astro-language-server/packages/language-tools/
    pushd $out/lib/node_modules/astro-language-server/node_modules
    rm -rf {./,.pnpm/node_modules/}astro-{scripts,benchmark}
    popd

    ln -s $out/lib/node_modules/astro-language-server/packages/language-tools/language-server/bin/nodeServer.js $out/bin/astro-ls

    runHook postInstall
  '';

  passthru.updateScript = nix-update-script {
    extraArgs = [
      "--version-regex"
      "@astrojs/language-server@(.*)"
    ];
  };

  meta = {
    description = "Astro language server";
    homepage = "https://github.com/withastro/language-tools";
    changelog = "https://github.com/withastro/language-tools/blob/@astrojs/language-server@${finalAttrs.version}/packages/language-server/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ pyrox0 ];
    mainProgram = "astro-ls";
    platforms = lib.platforms.unix;
  };
})
