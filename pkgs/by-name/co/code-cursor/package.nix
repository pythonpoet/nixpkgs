{
  lib,
  stdenv,
  callPackage,
  vscode-generic,
  fetchurl,
  appimageTools,
  undmg,
  commandLineArgs ? "",
  useVSCodeRipgrep ? stdenv.hostPlatform.isDarwin,
}:

let
  inherit (stdenv) hostPlatform;
  finalCommandLineArgs = "--update=false " + commandLineArgs;

<<<<<<< HEAD
  sources = {
    x86_64-linux = fetchurl {
      url = "https://downloads.cursor.com/production/20adc1003928b0f1b99305dbaf845656ff81f5d4/linux/x64/Cursor-2.2.44-x86_64.AppImage";
      hash = "sha256-hit0L6vE893jPq4QQqteT6T08hghX5hE/NZLUWTqqvY=";
    };
    aarch64-linux = fetchurl {
      url = "https://downloads.cursor.com/production/20adc1003928b0f1b99305dbaf845656ff81f5d4/linux/arm64/Cursor-2.2.44-aarch64.AppImage";
      hash = "sha256-D2pcfwzRED/TYGABCo83YI4g77tu3xgvqjOo8XsteSA=";
    };
    x86_64-darwin = fetchurl {
      url = "https://downloads.cursor.com/production/20adc1003928b0f1b99305dbaf845656ff81f5d4/darwin/x64/Cursor-darwin-x64.dmg";
      hash = "sha256-/BD2PMcP20/SDGPCsnkv3PQW7u0FEXuORfDeG/KV0MQ=";
    };
    aarch64-darwin = fetchurl {
      url = "https://downloads.cursor.com/production/20adc1003928b0f1b99305dbaf845656ff81f5d4/darwin/arm64/Cursor-darwin-arm64.dmg";
      hash = "sha256-qehVIZipBbWOYbf6Zo3GBStS8dp+c4EtgDTGAQz1mzE=";
    };
  };
||||||| 213fed0310e3
  sources = {
    x86_64-linux = fetchurl {
      url = "https://downloads.cursor.com/production/25412918da7e74b2686b25d62da1f01cfcd27683/linux/x64/Cursor-2.0.64-x86_64.AppImage";
      hash = "sha256-zT9GhdwGDWZJQl+WpV2txbmp3/tJRtL6ds1UZQoKNzA=";
    };
    aarch64-linux = fetchurl {
      url = "https://downloads.cursor.com/production/25412918da7e74b2686b25d62da1f01cfcd27683/linux/arm64/Cursor-2.0.64-aarch64.AppImage";
      hash = "sha256-1pN9LfnplKyVUxlICQ2KsxcAn++dZY9hGR4XubHxLUY=";
    };
    x86_64-darwin = fetchurl {
      url = "https://downloads.cursor.com/production/25412918da7e74b2686b25d62da1f01cfcd27683/darwin/x64/Cursor-darwin-x64.dmg";
      hash = "sha256-lY5BJeauw5VtWuaAu8C9C2inmKFvv/OnCxOicE2Zs48=";
    };
    aarch64-darwin = fetchurl {
      url = "https://downloads.cursor.com/production/25412918da7e74b2686b25d62da1f01cfcd27683/darwin/arm64/Cursor-darwin-arm64.dmg";
      hash = "sha256-IIJbuRdxTG7kSspspWk8GH9KZsKPyLJahz0iqSvP1B0=";
    };
  };
=======
  sourcesJson = lib.importJSON ./sources.json;
  sources = lib.mapAttrs (
    _: info:
    fetchurl {
      inherit (info) url hash;
    }
  ) sourcesJson.sources;
>>>>>>> master

  source = sources.${hostPlatform.system};
in
(callPackage vscode-generic rec {
  inherit useVSCodeRipgrep;
  inherit (sourcesJson) version vscodeVersion;
  commandLineArgs = finalCommandLineArgs;

<<<<<<< HEAD
  version = "2.2.44";
||||||| 213fed0310e3
  version = "2.0.64";
=======
>>>>>>> master
  pname = "cursor";

<<<<<<< HEAD
  # You can find the current VSCode version in the About dialog:
  # workbench.action.showAboutDialog (Help: About)
  vscodeVersion = "1.105.1";

||||||| 213fed0310e3
  # You can find the current VSCode version in the About dialog:
  # workbench.action.showAboutDialog (Help: About)
  vscodeVersion = "1.99.3";

=======
>>>>>>> master
  executableName = "cursor";
  longName = "Cursor";
  shortName = "cursor";
  libraryName = "cursor";
  iconName = "cursor";

  src =
    if hostPlatform.isLinux then
      appimageTools.extract {
        inherit pname version;
        src = source;
      }
    else
      source;

  sourceRoot =
    if hostPlatform.isLinux then "${pname}-${version}-extracted/usr/share/cursor" else "Cursor.app";

  tests = { };

  updateScript = ./update.sh;

  # Editing the `cursor` binary within the app bundle causes the bundle's signature
  # to be invalidated, which prevents launching starting with macOS Ventura, because Cursor is notarized.
  # See https://eclecticlight.co/2022/06/17/app-security-changes-coming-in-ventura/ for more information.
  dontFixup = stdenv.hostPlatform.isDarwin;

  # Cursor has no wrapper script.
  patchVSCodePath = false;

  meta = {
    description = "AI-powered code editor built on vscode";
    homepage = "https://cursor.com";
    changelog = "https://cursor.com/changelog";
    license = lib.licenses.unfree;
    sourceProvenance = with lib.sourceTypes; [ binaryNativeCode ];
    maintainers = with lib.maintainers; [
      aspauldingcode
      prince213
      qweered
    ];
    platforms = [
      "aarch64-linux"
      "x86_64-linux"
    ]
    ++ lib.platforms.darwin;
    mainProgram = "cursor";
  };
}).overrideAttrs
  (oldAttrs: {
    nativeBuildInputs =
      (oldAttrs.nativeBuildInputs or [ ]) ++ lib.optionals hostPlatform.isDarwin [ undmg ];

    passthru = (oldAttrs.passthru or { }) // {
      inherit sources;
    };
  })
