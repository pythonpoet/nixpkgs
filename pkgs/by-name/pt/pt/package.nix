{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "pt";
  gemdir = ./.;
  exes = [ "pt" ];

  passthru.updateScript = bundlerUpdateScript "pt";

  meta = {
    description = "Minimalist command-line Pivotal Tracker client";
    homepage = "http://www.github.com/raul/pt";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      ebzzry
      manveru
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [
      ebzzry
      manveru
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
    ];
    platforms = lib.platforms.unix;
    mainProgram = "pt";
  };
}
