{
  lib,
  stdenv,
  fetchFromGitLab,
  pkg-config,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "ansifilter";
  version = "2.22";

  src = fetchFromGitLab {
    owner = "saalen";
    repo = "ansifilter";
    tag = finalAttrs.version;
    hash = "sha256-jCgucC5mHkDwVtTKP92RBStxpouQCR7PHWkDt0y+9BM=";
  };

  nativeBuildInputs = [
    pkg-config
  ];

  postPatch = ''
    # avoid timestamp non-determinism with '-n'
    substituteInPlace makefile --replace-fail 'gzip -9f' 'gzip -9nf'
  '';

  makeFlags = [
    "PREFIX=${placeholder "out"}"
    "conf_dir=/etc/ansifilter"
  ];

<<<<<<< HEAD
  meta = {
    description = "Tool to convert ANSI to other formats";
||||||| 213fed0310e3
  meta = with lib; {
    description = "Tool to convert ANSI to other formats";
=======
  meta = {
    description = "ANSI sequence filter";
>>>>>>> master
    mainProgram = "ansifilter";
    longDescription = ''
      Ansifilter handles text files containing ANSI terminal escape codes.
      The command sequences may be stripped or be interpreted to generate formatted
      output (HTML, RTF, TeX, LaTeX, BBCode, Pango).
    '';
<<<<<<< HEAD
    homepage = "http://www.andre-simon.de/doku/ansifilter/en/ansifilter.html";
    license = lib.licenses.gpl3;
    maintainers = [ ];
    platforms = lib.platforms.linux ++ lib.platforms.darwin;
||||||| 213fed0310e3
    homepage = "http://www.andre-simon.de/doku/ansifilter/en/ansifilter.html";
    license = licenses.gpl3;
    maintainers = [ ];
    platforms = platforms.linux ++ platforms.darwin;
=======
    homepage = "https://gitlab.com/saalen/ansifilter";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ doronbehar ];
    platforms = lib.platforms.linux ++ lib.platforms.darwin;
>>>>>>> master
  };
})
