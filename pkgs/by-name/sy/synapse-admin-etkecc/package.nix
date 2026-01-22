{
  lib,
  stdenv,
  fetchFromGitHub,
  fetchYarnDeps,
  yarnConfigHook,
  yarnBuildHook,
  nodejs,
  nix-update-script,
  writers,
  baseUrl ? null,
}:

assert lib.asserts.assertMsg (
  baseUrl == null
) "The baseUrl parameter is deprecated, please use .withConfig instead";

stdenv.mkDerivation (finalAttrs: {
  pname = "synapse-admin-etkecc";
<<<<<<< HEAD
  version = "0.11.1-etke50";
||||||| 213fed0310e3
  version = "0.11.1-etke49";
=======
  version = "0.11.1-etke52";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "etkecc";
    repo = "synapse-admin";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-460Ma0R1WG9BGB2NgHD7yIz+alcywtuhyHZXH4DPxDA=";
||||||| 213fed0310e3
    hash = "sha256-PbqO+Y740GWqfh584W6OS4HeQtO6Rkz6lc5IaTjadq0=";
=======
    hash = "sha256-iK277gNgeAnv4V4D3J/9ozrw/yEH8jWESb2xJ6gbOfg=";
>>>>>>> master
  };

  yarnOfflineCache = fetchYarnDeps {
    yarnLock = finalAttrs.src + "/yarn.lock";
<<<<<<< HEAD
    hash = "sha256-qpzrOfBInKHFH/uUViLCSIkjc41XUaHOyTs5oejt5NY=";
||||||| 213fed0310e3
    hash = "sha256-4o6TVbOSDm7btMDd4ItQR+jCFNZGhTXvycqcIh0FQnk=";
=======
    hash = "sha256-X26s09KrV37HVd6cImJK9i/emNp7PV2fKq1ys2+t7ak=";
>>>>>>> master
  };

  nativeBuildInputs = [
    nodejs
    yarnConfigHook
    yarnBuildHook
  ];

  env = {
    NODE_ENV = "production";
    SYNAPSE_ADMIN_VERSION = finalAttrs.version;
  };

  installPhase = ''
    runHook preInstall
    cp -r dist $out
    runHook postInstall
  '';

  passthru = {
    # https://github.com/etkecc/synapse-admin/blob/main/docs/config.md
    withConfig =
      config:
      stdenv.mkDerivation {
        inherit (finalAttrs) version meta;
        pname = "synapse-admin-etkecc-with-config";
        dontUnpack = true;
        configFile = writers.writeJSON "synapse-admin-config" config;
        installPhase = ''
          runHook preInstall
          cp -r ${finalAttrs.finalPackage} $out
          chmod -R +w $out
          cp $configFile $out/config.json
          runHook postInstall
        '';
      };

    updateScript = nix-update-script { };
  };

  meta = {
    description = "Maintained fork of the admin console for (Matrix) Synapse homeservers, including additional features";
    homepage = "https://github.com/etkecc/synapse-admin";
    changelog = "https://github.com/etkecc/synapse-admin/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ defelo ];
  };
})
