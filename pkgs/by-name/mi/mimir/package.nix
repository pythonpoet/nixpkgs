{
  lib,
  buildGoModule,
  fetchFromGitHub,
  nixosTests,
  nix-update-script,
}:
buildGoModule (finalAttrs: {
  pname = "mimir";
<<<<<<< HEAD
  version = "3.0.1";
||||||| 213fed0310e3
  version = "3.0.0";
=======
  version = "3.0.2";
>>>>>>> master

  src = fetchFromGitHub {
    rev = "mimir-${finalAttrs.version}";
    owner = "grafana";
    repo = "mimir";
<<<<<<< HEAD
    hash = "sha256-tYGzU/sn6KLLetDmAyph5u8bCocmfF4ZysTkOCSVf+U=";
||||||| 213fed0310e3
    hash = "sha256-eLdlfGz5OQ3bPWhO2niBynaIPtxXg3x2qD89VK7uuA0=";
=======
    hash = "sha256-8dym3E6VinpExE4A+ekbhiQ+Zhwvue6/s1mAhBkwPMU=";
>>>>>>> master
  };

  vendorHash = null;

  subPackages = [
    "cmd/mimir"
    "cmd/mimirtool"
  ]
  ++ (map (pathName: "tools/${pathName}") [
    "compaction-planner"
    "copyblocks"
    "copyprefix"
    "delete-objects"
    "list-deduplicated-blocks"
    "listblocks"
    "mark-blocks"
    "splitblocks"
    "tenant-injector"
    "undelete-blocks"
  ]);

  passthru = {
    updateScript = nix-update-script {
      extraArgs = [
        "--version-regex"
        "mimir-([0-9.]+)"
      ];
    };
    tests = {
      inherit (nixosTests) mimir;
    };
  };

  ldflags =
    let
      t = "github.com/grafana/mimir/pkg/util/version";
    in
    [
      "-s"
      "-w"
      "-X ${t}.Version=${finalAttrs.version}"
      "-X ${t}.Revision=unknown"
      "-X ${t}.Branch=unknown"
    ];

  meta = {
    description = "Grafana Mimir provides horizontally scalable, highly available, multi-tenant, long-term storage for Prometheus. ";
    homepage = "https://github.com/grafana/mimir";
    changelog = "https://github.com/grafana/mimir/releases/tag/mimir-${finalAttrs.version}";
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [
      happysalada
      bryanhonof
      adamcstephens
    ];
  };
})
