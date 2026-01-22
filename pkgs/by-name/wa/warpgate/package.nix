{
  lib,
  replaceVars,
  fetchurl,
  fetchFromGitHub,
  rustPlatform,
  buildNpmPackage,
  openapi-generator-cli,
  nixosTests,
}:
rustPlatform.buildRustPackage (
  finalAttrs:
  let
    warpgate-web = buildNpmPackage {
      pname = "${finalAttrs.pname}-web";
      version = finalAttrs.version;

      src = finalAttrs.src;
      sourceRoot = "${finalAttrs.src.name}/warpgate-web";

      patches = [ ./web-ui-package-json.patch ];

<<<<<<< HEAD
      npmDepsHash = "sha256-jgsNF93DkEVgPGzdi192HKoSHPYhdrtog28jZvOLK6E=";
||||||| 213fed0310e3
      npmDepsHash = "sha256-1zCxKAH2IAKSFdL8Pyd8dJi0i8Y5mgYcWNKVpiQszc0=";
=======
      npmDepsHash = "sha256-jgsNF93DkEVgPGzdi192HKoSHPYhdrtog28jZvOLK6E=";
      # Fix peer dependency conflicts with ESLint 9.
      npmFlags = [ "--legacy-peer-deps" ];
>>>>>>> master

      nativeBuildInputs = [ openapi-generator-cli ];

      preBuild = "rm node_modules/.bin/openapi-generator-cli";

      installPhase = ''
        runHook preInstall
        cp -R dist $out
        runHook postInstall
      '';
    };
  in
  {
    pname = "warpgate";
    version = "0.18.0";

    src = fetchFromGitHub {
      owner = "warp-tech";
      repo = "warpgate";
      tag = "v${finalAttrs.version}";
      hash = "sha256-GLY/VGEKB6gFNTbBlbhpmqQZ62pk2wd6JwWwy4Tz0FE=";
    };

    cargoHash = "sha256-hwAtj8tTDsYgzuDobMg97wepKKIpohSVClyRiaDd+8w=";

    patches = [
      (replaceVars ./hardcode-version.patch { inherit (finalAttrs) version; })
    ];

<<<<<<< HEAD
    RUSTFLAGS = "--cfg tokio_unstable";

||||||| 213fed0310e3
=======
    env.RUSTFLAGS = "--cfg tokio_unstable";

>>>>>>> master
    buildFeatures = [
      "postgres"
      "mysql"
      "sqlite"
    ];

    preBuild = ''
      rm -r .cargo/
      ln -rs "${warpgate-web}" warpgate-web/dist
    '';

    # skip check, project included tests require python stuff and docker
    doCheck = false;

    passthru.tests = {
      inherit (nixosTests) warpgate;
    };

    meta = {
      description = "Smart SSH, HTTPS, MySQL and Postgres bastion that requires no additional client-side software";
      homepage = "https://warpgate.null.page";
      license = lib.licenses.asl20;
      platforms = lib.platforms.linux ++ lib.platforms.darwin;
      mainProgram = "warpgate";
      maintainers = with lib.maintainers; [ alemonmk ];
    };
  }
)
