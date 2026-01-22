{
  stdenv,
  buildNpmPackage,
  fetchFromGitHub,
  lib,
  electron,
  makeWrapper,
  writableTmpDirAsHomeHook,
}:

buildNpmPackage rec {
  pname = "vacuum-tube";
<<<<<<< HEAD
  version = "1.4.1";
||||||| 213fed0310e3
  version = "1.4.0";
=======
  version = "1.5.4";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "shy1132";
    repo = "VacuumTube";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-NZdrueEOzir1/1RncSWk/eDEXFqo3bIhKVspruP4k8s=";
||||||| 213fed0310e3
    hash = "sha256-fWcEdxP14wRltPtKIZGyGLpk0PWIJgTcxj93HpWmf2k=";
=======
    hash = "sha256-b5OnDoMejnupeK4sWoXQo7vpFFD/y1p4vxMZTMMO25g=";
>>>>>>> master
  };

<<<<<<< HEAD
  npmDepsHash = "sha256-JfsZI2V2nsoa/boQ9jBrEK+CkGa8KdsJriqnAv+YpmY=";
||||||| 213fed0310e3
  npmDepsHash = "sha256-5B5ADVxbfd6vzVGH4+ASQvxMMh1+/LsvelXgkVrPrEM=";
=======
  npmDepsHash = "sha256-NBsLgcYFHnj+hVELTKMreLsrJAu3S+RuhBcOTeIhQew=";
  makeCacheWritable = true;
>>>>>>> master

  env = {
    ELECTRON_SKIP_BINARY_DOWNLOAD = true;
  };

  nativeBuildInputs = [
    makeWrapper
    writableTmpDirAsHomeHook
  ];

  buildPhase = ''
    runHook preBuild

    npx electron-builder -l --dir \
      -c.electronDist="${electron.dist}" \
      -c.electronVersion=${electron.version}

    runHook postBuild
  '';

  installPhase = ''
    runHook preInstall

    mkdir -p $out/opt
    cp -r ./dist/*-unpacked $out/opt/VacuumTube

    for i in 16 32 48 64 256 512; do
      install -Dm644 "assets/icons/$i"x"$i.png" \
        "$out/share/icons/hicolor/$i"x"$i/apps/rocks.shy.VacuumTube.png"
    done

    install -Dm644 flatpak/rocks.shy.VacuumTube.desktop $out/share/applications/VacuumTube.desktop

    substituteInPlace $out/share/applications/VacuumTube.desktop \
      --replace-fail 'Exec=startvacuumtube' 'Exec=VacuumTube'

    makeWrapper "${electron}/bin/electron" "$out/bin/VacuumTube" \
      --add-flags "$out/opt/VacuumTube/resources/app.asar" \
      --add-flags "\''${NIXOS_OZONE_WL:+\''${WAYLAND_DISPLAY:+--ozone-platform-hint=auto --enable-features=WaylandWindowDecorations --enable-wayland-ime=true}}"

    runHook postInstall
  '';

  meta = {
    description = "YouTube Leanback on the desktop, with enhancements";
    homepage = "https://github.com/shy1132/VacuumTube";
    mainProgram = "VacuumTube";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ theCapypara ];
    # https://github.com/NixOS/nixpkgs/pull/453698#issuecomment-3422020307
    broken = stdenv.hostPlatform.isDarwin;
  };
}
