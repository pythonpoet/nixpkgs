{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation rec {
  pname = "chelf";
  version = "0.2.2";

  src = fetchFromGitHub {
    owner = "Gottox";
    repo = "chelf";
    rev = "v${version}";
    sha256 = "0xwd84aynyqsi2kcndbff176vmhrak3jmn3lfcwya59653pppjr6";
  };

  installPhase = ''
    mkdir -p $out/bin
    mv chelf $out/bin/chelf
  '';

  meta = {
    description = "Change or display the stack size of an ELF binary";
    homepage = "https://github.com/Gottox/chelf";
<<<<<<< HEAD
    license = lib.licenses.bsd2;
    maintainers = with lib.maintainers; [ dtzWill ];
||||||| 213fed0310e3
    license = licenses.bsd2;
    maintainers = with maintainers; [ dtzWill ];
=======
    license = lib.licenses.bsd2;
    maintainers = [ ];
>>>>>>> master
    mainProgram = "chelf";
  };
}
