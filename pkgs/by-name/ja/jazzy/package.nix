{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "jazzy";
  gemdir = ./.;
  exes = [ "jazzy" ];

  passthru.updateScript = bundlerUpdateScript "jazzy";

  meta = {
    description = "Command-line utility that generates documentation for Swift or Objective-C";
    homepage = "https://github.com/realm/jazzy";
<<<<<<< HEAD
    license = lib.licenses.mit;
    platforms = lib.platforms.darwin;
    maintainers = with lib.maintainers; [
      peterromfeldhk
||||||| 213fed0310e3
    license = licenses.mit;
    platforms = platforms.darwin;
    maintainers = with maintainers; [
      peterromfeldhk
=======
    license = lib.licenses.mit;
    platforms = lib.platforms.darwin;
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
    ];
  };
}
