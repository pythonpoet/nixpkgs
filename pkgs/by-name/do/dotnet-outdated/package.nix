{
  lib,
  buildDotnetGlobalTool,
  dotnetCorePackages,
}:
buildDotnetGlobalTool rec {
  pname = "dotnet-outdated";
  nugetName = "dotnet-outdated-tool";
  version = "4.6.9";

  dotnet-sdk = dotnetCorePackages.sdk_10_0;

  nugetHash = "sha256-LVe/b18hxM9A0Kni6Kl4sE38KgzIihDuc+xRw8qaKv0=";

<<<<<<< HEAD
  nugetDeps = ./deps.json;

  projectFile = "src/DotNetOutdated/DotNetOutdated.csproj";
  executables = "dotnet-outdated";

  dotnetFlags = [ "-p:TargetFrameworks=net8.0" ];
  dotnetInstallFlags = [
    "--framework"
    "net8.0"
  ];

  meta = {
||||||| 213fed0310e3
  nugetDeps = ./deps.json;

  projectFile = "src/DotNetOutdated/DotNetOutdated.csproj";
  executables = "dotnet-outdated";

  dotnetFlags = [ "-p:TargetFrameworks=net8.0" ];
  dotnetInstallFlags = [
    "--framework"
    "net8.0"
  ];

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    description = ".NET Core global tool to display and update outdated NuGet packages in a project";
    downloadPage = "https://www.nuget.org/packages/dotnet-outdated-tool";
    homepage = "https://github.com/dotnet-outdated/dotnet-outdated";
<<<<<<< HEAD
    sourceProvenance = with lib.sourceTypes; [
      fromSource
      # deps
      binaryBytecode
      binaryNativeCode
    ];
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ emilioziniades ];
||||||| 213fed0310e3
    sourceProvenance = with sourceTypes; [
      fromSource
      # deps
      binaryBytecode
      binaryNativeCode
    ];
    license = licenses.mit;
    maintainers = with maintainers; [ emilioziniades ];
=======
    changelog = "https://github.com/dotnet-outdated/dotnet-outdated/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ emilioziniades ];
>>>>>>> master
    mainProgram = "dotnet-outdated";
  };
}
