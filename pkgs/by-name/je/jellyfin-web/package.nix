{
  lib,
  stdenv,
  fetchFromGitHub,
  buildNpmPackage,
  nodejs_20,
  nix-update-script,
  pkg-config,
  xcbuild,
  pango,
  giflib,
  jellyfin,
}:
buildNpmPackage (finalAttrs: {
  pname = "jellyfin-web";
<<<<<<< HEAD
  version = "10.11.5";
||||||| 213fed0310e3
  version = "10.11.3";
=======
  version = "10.11.6";
>>>>>>> master

  src =
    assert finalAttrs.version == jellyfin.version;
    fetchFromGitHub {
      owner = "jellyfin";
      repo = "jellyfin-web";
<<<<<<< HEAD
      tag = "v${version}";
      hash = "sha256-9gDGREPORJILjVqw+Kk56+5qS/TQUd8OFmsEXL7KPAE=";
||||||| 213fed0310e3
      rev = "v${version}";
      hash = "sha256-rsAxV3ABO1HYnVsvsIMMoWizPuFL0GyfKNUGYkqFxBc=";
=======
      tag = "v${finalAttrs.version}";
      hash = "sha256-qmpVuxwsMM9Fhjkrrkxh+pMDh6+c3rZde7in5vIpaDg=";
>>>>>>> master
    };

  nodejs = nodejs_20; # does not build with 22

  postPatch = ''
    substituteInPlace webpack.common.js \
      --replace-fail "git describe --always --dirty" "echo ${finalAttrs.src.rev}" \
  '';

<<<<<<< HEAD
  npmDepsHash = "sha256-AYGWZ5QvmQl8+ayjzkWuBra+QUvde36ReIJ7Fxk89VM=";
||||||| 213fed0310e3
  npmDepsHash = "sha256-OLFjeCgq2c4d22L6yt7ihPuZiwsR1txZpjniuf/0L0I=";
=======
  npmDepsHash = "sha256-bXZn2FOWeIN8VTNLbKe7jM7yDtE2QRmyoWNZXgE5W4Q=";
>>>>>>> master

  preBuild = ''
    # using sass-embedded fails at executing node_modules/sass-embedded-linux-x64/dart-sass/src/dart
    rm -r node_modules/sass-embedded*
  '';

  npmBuildScript = [ "build:production" ];

  nativeBuildInputs = [ pkg-config ] ++ lib.optionals stdenv.hostPlatform.isDarwin [ xcbuild ];

  buildInputs = [
    pango
  ]
  ++ lib.optionals stdenv.hostPlatform.isDarwin [
    giflib
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share
    cp -a dist $out/share/jellyfin-web

    runHook postInstall
  '';

  passthru.updateScript = nix-update-script { };

  meta = {
    description = "Web Client for Jellyfin";
    homepage = "https://jellyfin.org/";
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [
      nyanloutre
      minijackson
      purcell
      jojosch
    ];
  };
})
