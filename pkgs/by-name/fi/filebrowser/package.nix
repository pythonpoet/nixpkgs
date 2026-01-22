{
  lib,
  fetchFromGitHub,
  buildGoModule,
  buildNpmPackage,
<<<<<<< HEAD
  pnpm_9,
  fetchPnpmDeps,
  pnpmConfigHook,
||||||| 213fed0310e3
  pnpm_9,
=======
  fetchPnpmDeps,
  pnpmConfigHook,
  nodejs_24,
  pnpm_10,
>>>>>>> master
  nix-update-script,
  nixosTests,
}:

<<<<<<< HEAD
||||||| 213fed0310e3
  pnpm = pnpm_9;

=======
let
  version = "2.55.0";

>>>>>>> master
  src = fetchFromGitHub {
    owner = "filebrowser";
    repo = "filebrowser";
    rev = "v${version}";
    hash = "sha256-1ZzTATJEVBr76+CMk8OzxdpWGqFHPPhyC7z2MgfqN+M=";
  };

  frontend = buildNpmPackage rec {
    pname = "filebrowser-frontend";
    inherit version src;

    sourceRoot = "${src.name}/frontend";

<<<<<<< HEAD
    nativeBuildInputs = [ pnpm_9 ];
    npmConfigHook = pnpmConfigHook;
||||||| 213fed0310e3
    npmConfigHook = pnpm.configHook;
=======
    nativeBuildInputs = [ pnpm_10 ];
    npmConfigHook = pnpmConfigHook;
>>>>>>> master
    npmDeps = pnpmDeps;
    nodejs = nodejs_24;

    pnpmDeps = fetchPnpmDeps {
      inherit
        pname
        version
        src
        sourceRoot
        ;
<<<<<<< HEAD
      pnpm = pnpm_9;
      fetcherVersion = 2;
      hash = "sha256-3n44BGJLdQR6uBSF09oyUzJm35/S3/ZEyZh4Wxqlfiw=";
||||||| 213fed0310e3
      fetcherVersion = 2;
      hash = "sha256-3n44BGJLdQR6uBSF09oyUzJm35/S3/ZEyZh4Wxqlfiw=";
=======
      fetcherVersion = 3;
      pnpm = pnpm_10;
      hash = "sha256-iv0LZoEyF5fASqBKNkTJhLMY0Xpa6x0i4csDoHmGU+g=";
>>>>>>> master
    };

    installPhase = ''
      runHook preInstall

      mkdir $out
      mv dist $out

      runHook postInstall
    '';
  };

in
buildGoModule {
  pname = "filebrowser";
  inherit version src;

  vendorHash = "sha256-4WDggP5eL7IPUWTxewxV2JUZZ3kV0PwewQQothz7AC8=";

  excludedPackages = [ "tools" ];

  preBuild = ''
    cp -r ${frontend}/dist frontend/
  '';

  ldflags = [
    "-X github.com/filebrowser/filebrowser/v2/version.Version=v${version}"
  ];

  passthru = {
    updateScript = nix-update-script { };
    inherit frontend;
    tests = {
      inherit (nixosTests) filebrowser;
    };
  };

  meta = {
    description = "Web application for managing files and directories";
    homepage = "https://filebrowser.org";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ oakenshield ];
    mainProgram = "filebrowser";
  };
}
