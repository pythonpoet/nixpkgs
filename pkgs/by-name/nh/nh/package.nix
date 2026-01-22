{
  lib,
  symlinkJoin,
  makeBinaryWrapper,
<<<<<<< HEAD
  fetchFromGitHub,
  fetchpatch,
  nix-update-script,
||||||| 213fed0310e3
  fetchFromGitHub,
  nix-update-script,
=======
  nh-unwrapped,
>>>>>>> master
  nix-output-monitor,
}:
let
  unwrapped = nh-unwrapped;
  runtimeDeps = [
    nix-output-monitor
  ];
in
symlinkJoin {
  pname = "nh";
<<<<<<< HEAD
  version = "4.2.0"; # Did you remove the patch below (and this comment)?
||||||| 213fed0310e3
  version = "4.2.0";
=======
  inherit (unwrapped) version;
>>>>>>> master

<<<<<<< HEAD
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "nh";
    tag = "v${finalAttrs.version}";
    hash = "sha256-6n5SVO8zsdVTD691lri7ZcO4zpqYFU8GIvjI6dbxkA8=";
  };

  patches = [
    (fetchpatch {
      url = "https://github.com/nix-community/nh/commit/8bf323483166797a204579a43ed8810113eb128c.patch";
      hash = "sha256-hg0LgDPjiPWR+1DRzqORv6QPlrds7ys4PTDXFw6PUoI=";
    })
  ];

  strictDeps = true;
||||||| 213fed0310e3
  src = fetchFromGitHub {
    owner = "nix-community";
    repo = "nh";
    tag = "v${finalAttrs.version}";
    hash = "sha256-6n5SVO8zsdVTD691lri7ZcO4zpqYFU8GIvjI6dbxkA8=";
  };

  strictDeps = true;
=======
  paths = [
    unwrapped
  ];
>>>>>>> master

  nativeBuildInputs = [
    makeBinaryWrapper
  ];

  postBuild = ''
    wrapProgram $out/bin/nh \
      --prefix PATH : ${lib.makeBinPath runtimeDeps}
  '';

  meta = {
<<<<<<< HEAD
    changelog = "https://github.com/nix-community/nh/blob/${finalAttrs.version}/CHANGELOG.md";
    description = "Yet another nix cli helper";
    homepage = "https://github.com/nix-community/nh";
    license = lib.licenses.eupl12;
    mainProgram = "nh";
    maintainers = with lib.maintainers; [
      NotAShelf
      mdaniels5757
      midischwarz12
      viperML
    ];
||||||| 213fed0310e3
    changelog = "https://github.com/nix-community/nh/blob/${finalAttrs.version}/CHANGELOG.md";
    description = "Yet another nix cli helper";
    homepage = "https://github.com/nix-community/nh";
    license = lib.licenses.eupl12;
    mainProgram = "nh";
    maintainers = with lib.maintainers; [
      NotAShelf
      viperML
    ];
=======
    inherit (unwrapped.meta)
      changelog
      description
      homepage
      license
      mainProgram
      maintainers
      ;

    # To prevent builds on hydra
    hydraPlatforms = [ ];
    # prefer wrapper over the package
    priority = (unwrapped.meta.priority or lib.meta.defaultPriority) - 1;
>>>>>>> master
  };
}
