{
  lib,
  fetchFromGitHub,
  telegram-desktop,
  withWebkit ? true,
}:

telegram-desktop.override {
  pname = "64gram";
  inherit withWebkit;
  unwrapped = telegram-desktop.unwrapped.overrideAttrs (old: rec {
    pname = "64gram-unwrapped";
<<<<<<< HEAD
    version = "1.1.88";
||||||| 213fed0310e3
    version = "1.1.84";
=======
    version = "1.1.93";
>>>>>>> master

    src = fetchFromGitHub {
      owner = "TDesktop-x64";
      repo = "tdesktop";
      tag = "v${version}";
<<<<<<< HEAD
      hash = "sha256-zC51hlfi4EwqaDBTQev7KAYvQmUMJl1RBWh5/By2GUU=";
||||||| 213fed0310e3
      hash = "sha256-CtDCrgKZpaTdR+Eh9H1uq7EmO0SFIgHKlW/zeeWBaCM=";
=======
      hash = "sha256-AwzTmEaN6MsJNq1W+cyAbg+QkYrPaV2LXmt3NzKc/vQ=";
>>>>>>> master
      fetchSubmodules = true;
    };

    meta = {
      description = "Unofficial Telegram Desktop providing Windows 64bit build and extra features";
      license = lib.licenses.gpl3Only;
      platforms = lib.platforms.all;
      homepage = "https://github.com/TDesktop-x64/tdesktop";
      changelog = "https://github.com/TDesktop-x64/tdesktop/releases/tag/v${version}";
      maintainers = with lib.maintainers; [ clot27 ];
      mainProgram = "Telegram";
    };
  });
}
