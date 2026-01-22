{
  lib,
  buildPythonPackage,
  fetchPypi,
  orjson,
}:

buildPythonPackage rec {
  pname = "fvs";
  version = "0.3.4";
  format = "setuptools";

  src = fetchPypi {
    inherit version;
    pname = "FVS";
    extension = "tar.gz";
    hash = "sha256-yYd0HzdwbqB9kexJjBRRYmdsoWtZtcjCNRz0ZJVM5CI=";
  };

  propagatedBuildInputs = [ orjson ];

  # no tests in src
  doCheck = false;

  pythonImportsCheck = [ "fvs" ];

  meta = {
    description = "File Versioning System with hash comparison and data storage to create unlinked states that can be deleted";
    mainProgram = "fvs";
    homepage = "https://github.com/mirkobrombin/FVS";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ bryanasdev000 ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ bryanasdev000 ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
  };
}
