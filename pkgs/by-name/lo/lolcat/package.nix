{
  lib,
  bundlerApp,
  ruby_3_4,
  bundlerUpdateScript,
}:

(bundlerApp.override { ruby = ruby_3_4; }) {
  pname = "lolcat";
  gemdir = ./.;
  exes = [ "lolcat" ];

  passthru.updateScript = bundlerUpdateScript "lolcat";

  meta = {
    description = "Rainbow version of cat";
    homepage = "https://github.com/busyloop/lolcat";
<<<<<<< HEAD:pkgs/tools/misc/lolcat/default.nix
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [
      StillerHarpo
      manveru
      nicknovitski
||||||| 213fed0310e3:pkgs/tools/misc/lolcat/default.nix
    license = licenses.bsd3;
    maintainers = with maintainers; [
      StillerHarpo
      manveru
      nicknovitski
=======
    license = lib.licenses.bsd3;
    maintainers = [
      lib.maintainers.StillerHarpo
      lib.maintainers.nicknovitski
>>>>>>> master:pkgs/by-name/lo/lolcat/package.nix
    ];
    mainProgram = "lolcat";
  };
}
