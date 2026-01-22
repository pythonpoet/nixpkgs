{
  lib,
  stdenv,
  fetchFromGitHub,
  boost,
  plistcpp,
  pugixml,
}:

stdenv.mkDerivation {
  pname = "xib2nib";
  version = "0-unstable-2017-04-12";

  src = fetchFromGitHub {
    owner = "matthewbauer";
    repo = "xib2nib";
    rev = "97c6a53aab83d919805efcae33cf80690e953d1e";
    hash = "sha256-GMf/XQYYCzuX1rcU3l7bTxhGlCnZliHtZCqf14kThCA=";
  };

  buildInputs = [
    boost
    plistcpp
    pugixml
  ];

  makeFlags = [
    "PREFIX=$(out)"
  ];

<<<<<<< HEAD
  meta = {
    maintainers = with lib.maintainers; [ matthewbauer ];
||||||| 213fed0310e3
  meta = with lib; {
    maintainers = with maintainers; [ matthewbauer ];
=======
  meta = {
    maintainers = [ ];
>>>>>>> master
    description = "Compiles CocoaTouch .xib files into .nib";
    license = lib.licenses.mit;
    platforms = lib.platforms.unix;
  };
}
