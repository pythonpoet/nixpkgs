{
  lib,
  buildGo124Module,
  fetchFromGitLab,
}:

buildGo124Module rec {
  pname = "gitlab-container-registry";
<<<<<<< HEAD
  version = "4.32.0";
||||||| 213fed0310e3
  version = "4.31.0";
=======
  version = "4.33.0";
>>>>>>> master
  rev = "v${version}-gitlab";

  # nixpkgs-update: no auto update
  src = fetchFromGitLab {
    owner = "gitlab-org";
    repo = "container-registry";
    inherit rev;
<<<<<<< HEAD
    hash = "sha256-LrrLNggb9OAhYCZ3STgBVJEY6m4bDo7aH3FO66s6Ge8=";
||||||| 213fed0310e3
    hash = "sha256-Vy0YaH3GP/IY6UDMSedEzmvEbaOG6QLCFANvbtDRct0=";
=======
    hash = "sha256-6FcnzlQQSeM8l2jH5dG9g0rmnEvAg2FWB8ZpKYBBhE4=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-zynz4btCcaTPTaBwMQdHB6rardrIvKKvmlo4wR0YIgI=";
||||||| 213fed0310e3
  vendorHash = "sha256-xrp6qLU7KzTt001KmydCkirtpQJdIxM4AXgbIaBmJ/w=";
=======
  vendorHash = "sha256-YfpqspLh+lV+MVZtn8iHQuE+DkZrcOq6hDt20SqkKfw=";
>>>>>>> master

  checkFlags =
    let
      skippedTests = [
        # requires internet
        "TestHTTPChecker"
        # requires s3 credentials/urls
        "TestS3DriverPathStyle"
        # flaky
        "TestPurgeAll"
      ];
    in
    [ "-skip=^${builtins.concatStringsSep "$|^" skippedTests}$" ];

  __darwinAllowLocalNetworking = true;

  meta = {
    description = "GitLab Docker toolset to pack, ship, store, and deliver content";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    teams = with lib.teams; [
      gitlab
      cyberus
    ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.asl20;
    teams = with teams; [
      gitlab
      cyberus
    ];
    platforms = platforms.unix;
=======
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ e1mo ];
    teams = with lib.teams; [ gitlab ];
    platforms = lib.platforms.unix;
>>>>>>> master
    mainProgram = "registry";
  };
}
