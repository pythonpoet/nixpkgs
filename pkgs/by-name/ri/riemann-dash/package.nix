{
  bundlerApp,
  lib,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "riemann-dash";
  gemdir = ./.;
  exes = [ "riemann-dash" ];

  passthru.updateScript = bundlerUpdateScript "riemann-dash";

  meta = {
    description = "Javascript, websockets-powered dashboard for Riemann";
    homepage = "https://github.com/riemann/riemann-dash";
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
  };
}
