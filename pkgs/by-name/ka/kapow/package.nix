{
  lib,
  stdenv,
  fetchFromGitHub,
  libsForQt5,
}:

stdenv.mkDerivation rec {
  pname = "kapow";
  version = "1.5.10";

  src = fetchFromGitHub {
    owner = "gottcode";
    repo = "kapow";
    rev = "v${version}";
    sha256 = "1fz9fb4w21ax8hjs6dwfn2410ig4lqvzdlijq0jcj3jbgxd4i1gw";
  };

  nativeBuildInputs = [
    libsForQt5.qmake
    libsForQt5.qttools
    libsForQt5.wrapQtAppsHook
  ];

  buildInputs = [ libsForQt5.qtbase ];

  meta = {
    description = "Punch clock to track time spent on projects";
    mainProgram = "kapow";
    homepage = "https://gottcode.org/kapow/";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ orivej ];
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3Plus;
||||||| 213fed0310e3
    maintainers = with maintainers; [ orivej ];
    platforms = platforms.linux;
    license = licenses.gpl3Plus;
=======
    maintainers = [ ];
    platforms = lib.platforms.linux;
    license = lib.licenses.gpl3Plus;
>>>>>>> master
  };
}
