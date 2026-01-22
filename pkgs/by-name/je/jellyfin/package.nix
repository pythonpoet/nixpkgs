{
  lib,
  fetchFromGitHub,
  nixosTests,
  dotnetCorePackages,
  buildDotnetModule,
  jellyfin-ffmpeg,
  fontconfig,
  freetype,
  jellyfin-web,
  sqlite,
  versionCheckHook,
}:

buildDotnetModule (finalAttrs: {
  pname = "jellyfin";
<<<<<<< HEAD
  version = "10.11.5"; # ensure that jellyfin-web has matching version
||||||| 213fed0310e3
  version = "10.11.3"; # ensure that jellyfin-web has matching version
=======
  version = "10.11.6"; # ensure that jellyfin-web has matching version
>>>>>>> master

  src = fetchFromGitHub {
    owner = "jellyfin";
    repo = "jellyfin";
<<<<<<< HEAD
    tag = "v${version}";
    hash = "sha256-MOzMSubYkxz2kwpvamaOwz3h8drEgeSoiE9Gwassmbk=";
||||||| 213fed0310e3
    rev = "v${version}";
    hash = "sha256-xNQe0hjY1BjC1D+hYTj1Gv2jCpwhWJv9dlvY6K9jkSk=";
=======
    tag = "v${finalAttrs.version}";
    hash = "sha256-bF/N6FC1/qfBar2KNut8KY3Rz+pqArCt4HV3NAH8eaU=";
>>>>>>> master
  };

  propagatedBuildInputs = [ sqlite ];

  projectFile = "Jellyfin.Server/Jellyfin.Server.csproj";
  executables = [ "jellyfin" ];
  nugetDeps = ./nuget-deps.json;
  runtimeDeps = [
    jellyfin-ffmpeg
    fontconfig
    freetype
  ];
  dotnet-sdk = dotnetCorePackages.sdk_9_0;
  dotnet-runtime = dotnetCorePackages.aspnetcore_9_0;
  dotnetBuildFlags = [ "--no-self-contained" ];

  makeWrapperArgs = [
    "--add-flags"
    "--ffmpeg=${jellyfin-ffmpeg}/bin/ffmpeg"
    "--add-flags"
    "--webdir=${jellyfin-web}/share/jellyfin-web"
  ];

  nativeInstallCheckInputs = [
    versionCheckHook
  ];
  doInstallCheck = true;

  passthru.tests = {
    smoke-test = nixosTests.jellyfin;
  };

  passthru.updateScript = ./update.sh;

  meta = {
    description = "Free Software Media System";
    homepage = "https://jellyfin.org/";
    # https://github.com/jellyfin/jellyfin/issues/610#issuecomment-537625510
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [
      nyanloutre
      minijackson
      purcell
      jojosch
    ];
    mainProgram = "jellyfin";
    platforms = finalAttrs.dotnet-runtime.meta.platforms;
  };
})
