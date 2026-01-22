{
  lib,
  ocaml,
  buildDunePackage,
  fetchFromGitHub,
  menhir,
  menhirLib,
  ppx_deriving_yojson,
  visitors,
}:

buildDunePackage rec {
  pname = "morbig";
  version = "0.11.0";

  src = fetchFromGitHub {
    owner = "colis-anr";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-fOBaJHHP/Imi9UDLflI52OdKDcmMxpl+NH3pfofmv/o=";
  };

  nativeBuildInputs = [
    menhir
  ];

  propagatedBuildInputs = [
    menhirLib
    ppx_deriving_yojson
    visitors
  ];

<<<<<<< HEAD
    propagatedBuildInputs = [
      menhirLib
      ppx_deriving_yojson
      visitors
      yojson
    ];

    meta = {
      homepage = "https://github.com/colis-anr/${pname}";
      description = "Static parser for POSIX Shell";
      license = lib.licenses.gpl3Plus;
      maintainers = with lib.maintainers; [ niols ];
    };
  }
||||||| 213fed0310e3
    propagatedBuildInputs = [
      menhirLib
      ppx_deriving_yojson
      visitors
      yojson
    ];

    meta = with lib; {
      homepage = "https://github.com/colis-anr/${pname}";
      description = "Static parser for POSIX Shell";
      license = licenses.gpl3Plus;
      maintainers = with maintainers; [ niols ];
    };
  }
=======
  meta = {
    homepage = "https://github.com/colis-anr/${pname}";
    description = "Static parser for POSIX Shell";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ niols ];
    broken = lib.versionAtLeast ocaml.version "5.4";
  };
}
>>>>>>> master
