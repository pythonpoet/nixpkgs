{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "asmrepl";
  gemdir = ./.;
  exes = [ "asmrepl" ];

  passthru.updateScript = bundlerUpdateScript "asmrepl";

  meta = {
    description = "REPL for x86-64 assembly language";
    homepage = "https://github.com/tenderlove/asmrepl";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ lom ];
    platforms = lib.platforms.x86_64;
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = with maintainers; [ lom ];
    platforms = platforms.x86_64;
=======
    license = lib.licenses.asl20;
    maintainers = [ ];
    platforms = lib.platforms.x86_64;
>>>>>>> master
  };
}
