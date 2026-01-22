{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:
bundlerApp {
  pname = "wayback_machine_downloader";
  exes = [ "wayback_machine_downloader" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "wayback_machine_downloader";

  meta = {
    description = "Download websites from the Internet Archive Wayback Machine";
    homepage = "https://github.com/hartator/wayback-machine-downloader";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.manveru ];
    platforms = lib.platforms.all;
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = [ maintainers.manveru ];
    platforms = platforms.all;
=======
    license = lib.licenses.mit;
    platforms = lib.platforms.all;
>>>>>>> master
    mainProgram = "wayback_machine_downloader";
  };
}
