{
  lib,
  stdenv,
  fetchurl,
  elfutils,
  xxHash,
  dejagnu,
  gdb,
}:

stdenv.mkDerivation rec {
  pname = "dwz";
  version = "0.16";

  src = fetchurl {
    url = "https://www.sourceware.org/ftp/dwz/releases/dwz-${version}.tar.gz";
    hash = "sha256-R1hT4bSebtjMLQqQnHpPwcxXHrzPxmJ4/UM0Lb4n1Q4=";
  };

  postPatch = ''
    patchShebangs --build testsuite
  '';

  nativeBuildInputs = [ elfutils ];

  buildInputs = [
    xxHash
    elfutils
  ];

  makeFlags = [ "prefix=${placeholder "out"}" ];

<<<<<<< HEAD
  meta = {
||||||| 213fed0310e3
  meta = with lib; {
=======
  doCheck = true;

  nativeCheckInputs = [
    dejagnu
    gdb
  ];

  strictDeps = true;

  meta = {
>>>>>>> master
    homepage = "https://sourceware.org/dwz/";
    description = "DWARF optimization and duplicate removal tool";
    mainProgram = "dwz";
<<<<<<< HEAD
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [ jbcrail ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    license = licenses.gpl2Plus;
    maintainers = with maintainers; [ jbcrail ];
    platforms = platforms.linux;
=======
    license = lib.licenses.gpl2Plus;
    maintainers = with lib.maintainers; [ jbcrail ];
    platforms = [ lib.systems.inspect.patterns.isElf ];
>>>>>>> master
  };
}
