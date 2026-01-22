{
  lib,
  fetchFromGitHub,
  stdenv,
  findlib,
  ocaml,
  lem,
}:

stdenv.mkDerivation rec {
  pname = "ocaml${ocaml.version}-linksem";
  version = "0.8";

  src = fetchFromGitHub {
    owner = "rems-project";
    repo = "linksem";
    rev = version;
    hash = "sha256-7/YfDK3TruKCckMzAPLRrwBkHRJcX1S+AzXHWRxkZPA=";
  };

  nativeBuildInputs = [
    findlib
    ocaml
  ];

  propagatedBuildInputs = [ lem ];

  createFindlibDestdir = true;

  meta = {
    homepage = "https://github.com/rems-project/linksem";
    description = "Formalisation of substantial parts of ELF linking and DWARF debug information";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ genericnerdyusername ];
    license = lib.licenses.bsd2;
||||||| 213fed0310e3
    maintainers = with maintainers; [ genericnerdyusername ];
    license = licenses.bsd2;
=======
    maintainers = [ ];
    license = lib.licenses.bsd2;
>>>>>>> master
    platforms = ocaml.meta.platforms;
    broken = !(lib.versionAtLeast ocaml.version "4.07");
  };
}
