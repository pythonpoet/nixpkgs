{
  bash,
  lib,
  buildFishPlugin,
  fetchFromGitHub,
}:

buildFishPlugin {
  pname = "foreign-env";
  version = "0-unstable-2023-08-23";

  src = fetchFromGitHub {
    owner = "oh-my-fish";
    repo = "plugin-foreign-env";
    rev = "7f0cf099ae1e1e4ab38f46350ed6757d54471de7";
    hash = "sha256-4+k5rSoxkTtYFh/lEjhRkVYa2S4KEzJ/IJbyJl+rJjQ=";
  };

  preInstall = ''
    sed -i -e "s|bash|${lib.getExe bash}|" functions/fenv.main.fish
  '';

  meta = {
    description = "Foreign environment interface for Fish shell";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ jgillich ];
    platforms = with lib.platforms; unix;
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ jgillich ];
    platforms = with platforms; unix;
=======
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [
      jgillich
      prince213
    ];
    platforms = with lib.platforms; unix;
>>>>>>> master
  };
}
