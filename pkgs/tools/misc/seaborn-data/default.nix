{
  lib,
  newScope,
  fetchFromGitHub,
  unzip,
  stdenvNoCC,
}:
let
  base = {
    version = "unstable-2023-01-26";
    dontBuild = true;
    meta = {
      description = "Data repository for seaborn examples";
      homepage = "https://github.com/mwaskom/seaborn-data";
<<<<<<< HEAD
      platforms = lib.platforms.all;
      maintainers = with lib.maintainers; [ mbalatsko ];
||||||| 213fed0310e3
      platforms = platforms.all;
      maintainers = with maintainers; [ mbalatsko ];
=======
      platforms = lib.platforms.all;
      maintainers = [ ];
>>>>>>> master
    };
  };
  makeSeabornDataPackage =
    { pname, hash }:
    let
      src = fetchFromGitHub {
        owner = "mwaskom";
        repo = "seaborn-data";
        rev = "2b29313169bf8dfa77d8dc930f7bd3eba559a906";
        inherit hash;
        sparseCheckout = [ "${pname}.csv" ];
      };
    in
    stdenvNoCC.mkDerivation (
      base
      // {
        inherit pname src;
        version = base.version;
        installPhase = ''
          runHook preInstall

          mkdir -p $out
          cp ${pname}.csv $out/${pname}.csv

          runHook postInstall
        '';
      }
    );
in
lib.makeScope newScope (self: {
  exercise = makeSeabornDataPackage {
    pname = "exercise";
    hash = "sha256-icoc2HkG303A8hCoW6kZxD5qhOKIpdxErLr288o04wE=";
  };
})
