{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "fpm";
  gemdir = ./.;
  exes = [ "fpm" ];

  passthru.updateScript = bundlerUpdateScript "fpm";

  meta = {
    description = "Tool to build packages for multiple platforms with ease";
    homepage = "https://github.com/jordansissel/fpm";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      manveru
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [
      manveru
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
    ];
    platforms = lib.platforms.unix;
    mainProgram = "fpm";
  };
}
