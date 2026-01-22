{
  lib,
  buildNpmPackage,
  fetchFromGitHub,
  nodejs_22,
}:

buildNpmPackage.override { nodejs = nodejs_22; } (finalAttrs: {
  pname = "mongosh";
<<<<<<< HEAD
  version = "2.5.10";
||||||| 213fed0310e3
  version = "2.5.9";
=======
  version = "2.6.0";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "mongodb-js";
    repo = "mongosh";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-N1uAIgEX44RSFJTivOpASKiab+Jr0N0Mo+olt000uK4=";
||||||| 213fed0310e3
    hash = "sha256-lZ2JnFIZvfxRyYXMUbjnazgggRm4ZBdEStn91bPSzkY=";
=======
    hash = "sha256-JoHTHqBx7CKcpEzn82qK4Mp8zGzw4o/iYMhZAw6gpV0=";
>>>>>>> master
  };

<<<<<<< HEAD
  npmDepsHash = "sha256-/8qw9dVPHAuyQZWdDq+jhP7NMBwTbvMqv/PtwXJEQuo=";
||||||| 213fed0310e3
  npmDepsHash = "sha256-tLgfhg940PJYPQ9myT+mi7+nubcGHU1C1/Az8gF6spQ=";
=======
  npmDepsHash = "sha256-PgH5r2E94fKj5dhEDP6h68UoRq3KPvJuYdM1oAGuWXo=";
>>>>>>> master

  patches = [
    ./disable-telemetry.patch
  ];

  npmFlags = [
    "--omit=optional"
    "--ignore-scripts"
  ];
  npmBuildScript = "compile";
  dontNpmInstall = true;
  installPhase = ''
    runHook preInstall
    npmWorkspace=packages/mongosh npmInstallHook
    cp -r packages configs $out/lib/node_modules/mongosh/
    rm $out/lib/node_modules/mongosh/node_modules/@mongosh/docker-build-scripts # dangling symlink
    runHook postInstall
  '';

  passthru = {
    # Version testing is skipped because upstream often forgets to update the version.

    updateScript = ./update.sh;
  };

  meta = {
    homepage = "https://www.mongodb.com/try/download/shell";
    description = "MongoDB Shell";
    maintainers = with lib.maintainers; [ aaronjheng ];
    license = lib.licenses.asl20;
    mainProgram = "mongosh";
  };
})
