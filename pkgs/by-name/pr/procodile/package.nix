{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "procodile";
  gemdir = ./.;
  exes = [ "procodile" ];

  passthru.updateScript = bundlerUpdateScript "procodile";

  meta = {
    description = "Run processes in the background (and foreground) on Mac & Linux from a Procfile (for production and/or development environments)";
    homepage = "https://github.com/adamcooke/procodile";
<<<<<<< HEAD
    license = with lib.licenses; mit;
    maintainers = with lib.maintainers; [
      manveru
||||||| 213fed0310e3
    license = with licenses; mit;
    maintainers = with maintainers; [
      manveru
=======
    license = with lib.licenses; mit;
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
    ];
    platforms = lib.platforms.unix;
    mainProgram = "procodile";
  };
}
