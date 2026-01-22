{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "cucumber";
  gemdir = ./.;
  exes = [ "cucumber" ];

  passthru.updateScript = bundlerUpdateScript "cucumber";

  meta = {
    description = "Tool for executable specifications";
    homepage = "https://cucumber.io/";
    changelog = "https://github.com/cucumber/cucumber-ruby/blob/main/CHANGELOG.md";
    license = lib.licenses.mit;
    mainProgram = "cucumber";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [
      manveru
||||||| 213fed0310e3
    maintainers = with maintainers; [
      manveru
=======
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
      anthonyroussel
    ];
    platforms = lib.platforms.unix;
  };
}
