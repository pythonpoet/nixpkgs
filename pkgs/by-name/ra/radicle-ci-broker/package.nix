{
  lib,
  rustPlatform,
  fetchFromRadicle,
  stdenv,
  jq,
  gitMinimal,
  sqlite,
  radicle-node,
  writableTmpDirAsHomeHook,
  versionCheckHook,
  nixosTests,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "radicle-ci-broker";
<<<<<<< HEAD
  version = "0.24.0";
||||||| 213fed0310e3
  version = "0.22.0";
=======
  version = "0.25.0";
>>>>>>> master

  src = fetchFromRadicle {
    seed = "seed.radicle.xyz";
    repo = "zwTxygwuz5LDGBq255RA2CbNGrz8";
    node = "z6MkgEMYod7Hxfy9qCvDv5hYHkZ4ciWmLFgfvm3Wn1b2w2FV";
    tag = "v${finalAttrs.version}";
<<<<<<< HEAD
    hash = "sha256-E9i5EhzI+9PX2Sm2nNyB5SMi6F/EmjifeD0futPBi6k=";
||||||| 213fed0310e3
    hash = "sha256-ylgOnDQRjQrG9Dngo/N6nGOnNcKgFtN9hT96yryHn0I=";
=======
    hash = "sha256-28PS85ME0Yg6+FnYw8GRNeo56z5efAqSE7FNk7wiTuI=";
>>>>>>> master
    leaveDotGit = true;
    postFetch = ''
      git -C $out rev-parse --short HEAD > $out/.git_head
      rm -rf $out/.git
    '';
  };

<<<<<<< HEAD
  cargoHash = "sha256-RlqomX4XiKn/YuCdBh6H/y+8JFBwC06eDEAmhz71UXs=";
||||||| 213fed0310e3
  cargoHash = "sha256-Ykf8vk/5KcZcudbKkU/Ht4gPtmG45b60IorKL90RjAA=";
=======
  cargoHash = "sha256-v+ax8DmXZFxYGYL7WaX5W/UIByuYcvkAMQIqpb6Emyw=";
>>>>>>> master

  postPatch = ''
    substituteInPlace build.rs \
      --replace-fail "let hash = " "let hash = \"$(<$src/.git_head)\"; "

    substituteInPlace ci-broker.md \
      --replace-fail 'PATH: /bin' "" \
      --replace-fail '"PATH": "/bin"' ""
  '';

  preCheck = ''
    ln -s "$PWD/target/${stdenv.hostPlatform.rust.rustcTarget}/$cargoBuildType" target/debug

    rad auth --alias alice --stdin </dev/null
  '';

  nativeCheckInputs = [
    jq
    gitMinimal
    sqlite
    radicle-node
    writableTmpDirAsHomeHook
  ];

  checkFlags = [ "--skip=acceptance_criteria_for_upgrades" ];

  nativeInstallCheckInputs = [ versionCheckHook ];
  doInstallCheck = true;

  passthru = {
    tests = { inherit (nixosTests) radicle-ci-broker; };
    updateScript = ./update.sh;
  };

  meta = {
    description = "Radicle CI broker";
    homepage = "https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:zwTxygwuz5LDGBq255RA2CbNGrz8";
    changelog = "https://app.radicle.xyz/nodes/seed.radicle.xyz/rad:zwTxygwuz5LDGBq255RA2CbNGrz8/tree/NEWS.md";
    license = with lib.licenses; [
      mit
      asl20
    ];
    maintainers = with lib.maintainers; [ defelo ];
    mainProgram = "cib";
  };
})
