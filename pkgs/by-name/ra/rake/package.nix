{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "rake";
  gemdir = ./.;
  exes = [ "rake" ];

  passthru.updateScript = bundlerUpdateScript "rake";

  meta = {
    description = "Software task management and build automation tool";
    homepage = "https://github.com/ruby/rake";
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
    mainProgram = "rake";
  };
}
