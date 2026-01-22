{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
}:

stdenv.mkDerivation rec {
  pname = "sonivox";
  version = "4.0.0";

  src = fetchFromGitHub {
    owner = "EmbeddedSynth";
    repo = "sonivox";
    tag = "v${version}";
    hash = "sha256-eOC/7R45X93Q9KKnP+/fyPMESOVyTnzpqnLHnDQwLnQ=";
  };

  nativeBuildInputs = [ cmake ];

<<<<<<< HEAD
  meta = {
    homepage = "https://github.com/pedrolcl/sonivox";
||||||| 213fed0310e3
  meta = with lib; {
    homepage = "https://github.com/pedrolcl/sonivox";
=======
  meta = {
    homepage = "https://github.com/EmbeddedSynth/sonivox";
>>>>>>> master
    description = "MIDI synthesizer library";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ orivej ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = with maintainers; [ orivej ];
    platforms = platforms.linux;
=======
    license = lib.licenses.asl20;
    maintainers = [ lib.maintainers.wegank ];
    platforms = lib.platforms.all;
>>>>>>> master
  };
}
