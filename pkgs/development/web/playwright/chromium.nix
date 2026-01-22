{
  runCommand,
  makeWrapper,
  fontconfig_file,
  chromium,
  fetchzip,
  revision,
  suffix,
  system,
  throwSystem,
  lib,
  alsa-lib,
  at-spi2-atk,
  atk,
  autoPatchelfHook,
  cairo,
  cups,
  dbus,
  expat,
  glib,
  gobject-introspection,
  libGL,
  libgbm,
  libgcc,
  libxkbcommon,
  nspr,
  nss,
  pango,
  patchelf,
  pciutils,
  stdenv,
  systemd,
  vulkan-loader,
  xorg,
  ...
}:
let
  # Playwright expects different directory names for different architectures:
  # - linux-x64 expects: chrome-linux64
  # - linux-arm64 expects: chrome-linux
  chromeDir =
    {
      x86_64-linux = "chrome-linux64";
      aarch64-linux = "chrome-linux";
    }
    .${system} or throwSystem;

  chromium-linux = stdenv.mkDerivation {
    name = "playwright-chromium";
    src = fetchzip {
      url = "https://playwright.azureedge.net/builds/chromium/${revision}/chromium-${suffix}.zip";
      hash =
        {
<<<<<<< HEAD
          x86_64-linux = "sha256-uf8FUMgUUyM1xw5eUuMUgUg9GIW8bDcNZz0mIfnoTLM=";
          aarch64-linux = "sha256-j+j6w99EmfehV+qyqbLFK2H5HpB2qakq93GgdTMPibU=";
||||||| 213fed0310e3
          x86_64-linux = "sha256-R7nMCVpUqgRwtB0syhfIK81maiTVWr8lYBLp4bR8VBg=";
          aarch64-linux = "sha256-4fc4X7QwBigktmEeseuqIyEeV70Dy3eO/femXrftMd0=";
=======
          x86_64-linux = "sha256-r715GrQMPRIsM2/Z6SRyvo/6j4fbWXKfCCh//Cc2DGw=";
          aarch64-linux = "sha256-bS8CstCia8dm2DG9vBKHjsfeoXkyBZStBefu0kD8c2o=";
>>>>>>> master
        }
        .${system} or throwSystem;
    };

    nativeBuildInputs = [
      autoPatchelfHook
      patchelf
      makeWrapper
    ];
    buildInputs = [
      alsa-lib
      at-spi2-atk
      atk
      cairo
      cups
      dbus
      expat
      glib
      gobject-introspection
      libgbm
      libgcc
      libxkbcommon
      nspr
      nss
      pango
      stdenv.cc.cc.lib
      systemd
      xorg.libX11
      xorg.libXcomposite
      xorg.libXdamage
      xorg.libXext
      xorg.libXfixes
      xorg.libXrandr
      xorg.libxcb
    ];

    installPhase = ''
      runHook preInstall

      mkdir -p $out/${chromeDir}
      cp -R . $out/${chromeDir}

      wrapProgram $out/${chromeDir}/chrome \
        --set-default SSL_CERT_FILE /etc/ssl/certs/ca-bundle.crt \
        --set-default FONTCONFIG_FILE ${fontconfig_file}

      runHook postInstall
    '';

    appendRunpaths = lib.makeLibraryPath [
      libGL
      vulkan-loader
      pciutils
    ];

    postFixup = ''
      # replace bundled vulkan-loader since we are also already adding our own to RPATH
      rm "$out/${chromeDir}/libvulkan.so.1"
      ln -s -t "$out/${chromeDir}" "${lib.getLib vulkan-loader}/lib/libvulkan.so.1"
    '';
  };
  chromium-darwin = fetchzip {
    url = "https://playwright.azureedge.net/builds/chromium/${revision}/chromium-${suffix}.zip";
    stripRoot = false;
    hash =
      {
<<<<<<< HEAD
        x86_64-darwin = "sha256-dsyw6fT/jfx2RC2wEFMgIkIpVYu+6TXaDpFLNHX5als=";
        aarch64-darwin = "sha256-G7PlHJPlDQXQzO5MGuCuGQUxV9VqKY4yQebuoltVq6U=";
||||||| 213fed0310e3
        x86_64-darwin = "sha256-0u1AStbUTX+qgUmg2DvL59B4b265WywDaBV+MdSuaNE=";
        aarch64-darwin = "sha256-4pg4wmNTF8mw+APmdpvYlFxb9zc6OUh11oW5gCRKETY=";
=======
        x86_64-darwin = "sha256-kGHlIxS9Ti362XmBt+aepYV45cCZoBRqJ+YBsLasDp0=";
        aarch64-darwin = "sha256-LwY25Ckh1ZY+L196shf8ydF4IHXUIeI83Yqp8KG+nc4=";
>>>>>>> master
      }
      .${system} or throwSystem;
  };
in
{
  x86_64-linux = chromium-linux;
  aarch64-linux = chromium-linux;
  x86_64-darwin = chromium-darwin;
  aarch64-darwin = chromium-darwin;
}
.${system} or throwSystem
