{
  lib,
  stdenv,
  fetchFromGitHub,
<<<<<<< HEAD:pkgs/development/tools/analysis/flow/default.nix
  ocamlPackages,
  dune,
||||||| 213fed0310e3:pkgs/development/tools/analysis/flow/default.nix
  ocamlPackages,
=======
  ocaml-ng,
  dune,
  versionCheckHook,
>>>>>>> master:pkgs/by-name/fl/flow/package.nix
}:

let
  ocamlPackages = ocaml-ng.ocamlPackages.overrideScope (
    self: super: {
      ppxlib = super.ppxlib.override { version = "0.34.0"; };
    }
  );
in
stdenv.mkDerivation (finalAttrs: {
  pname = "flow";
  version = "0.295.0";

  src = fetchFromGitHub {
    owner = "facebook";
    repo = "flow";
    tag = "v${finalAttrs.version}";
    hash = "sha256-Mqx07dJAYIesp09RmKr74rLKRkG46nHQERhuQ7AyAiM=";
  };

  patches = [
    # error: 'uint64_t' does not name a type
    ./gcc-15-compat.patch
  ];

  makeFlags = [ "FLOW_RELEASE=1" ];

  strictDeps = true;

  nativeBuildInputs = with ocamlPackages; [
    ocaml
    dune
    findlib
    ocamlbuild
  ];

  buildInputs = (
    with ocamlPackages;
    [
      camlp-streams
      dtoa
      fileutils
      lwt_log
      lwt_ppx
      lwt
      ppx_deriving
      ppx_gen_rec
      ppx_let
      sedlex
      visitors
      wtf8
    ]
    ++ lib.optionals stdenv.hostPlatform.isLinux [ inotify ]
  );

<<<<<<< HEAD:pkgs/development/tools/analysis/flow/default.nix
  meta = {
||||||| 213fed0310e3:pkgs/development/tools/analysis/flow/default.nix
  meta = with lib; {
=======
  installPhase = ''
    runHook preInstall

    install -Dm755 bin/flow $out/bin/flow
    install -Dm644 resources/shell/bash-completion $out/share/bash-completion/completions/flow

    runHook postInstall
  '';

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  versionCheckProgramArg = "--version";
  doInstallCheck = true;

  meta = {
>>>>>>> master:pkgs/by-name/fl/flow/package.nix
    description = "Static type checker for JavaScript";
    mainProgram = "flow";
    homepage = "https://flow.org/";
<<<<<<< HEAD:pkgs/development/tools/analysis/flow/default.nix
    changelog = "https://github.com/facebook/flow/blob/v${version}/Changelog.md";
    license = lib.licenses.mit;
||||||| 213fed0310e3:pkgs/development/tools/analysis/flow/default.nix
    changelog = "https://github.com/facebook/flow/blob/v${version}/Changelog.md";
    license = licenses.mit;
=======
    changelog = "https://github.com/facebook/flow/blob/${finalAttrs.src.tag}/Changelog.md";
    license = lib.licenses.mit;
>>>>>>> master:pkgs/by-name/fl/flow/package.nix
    platforms = ocamlPackages.ocaml.meta.platforms;
    maintainers = with lib.maintainers; [ puffnfresh ];
  };
})
