{
  lib,
  buildPythonPackage,
  fetchPypi,

  # build-system
  hatchling,

  # tests
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "expandvars";
  version = "1.1.1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-mK3YJot2Df7kV73hwXv3RXlf3rwit92rdf0yeGU/HgU=";
  };

  nativeBuildInputs = [ hatchling ];

  pythonImportsCheck = [ "expandvars" ];

  nativeCheckInputs = [ pytestCheckHook ];

  meta = {
    description = "Expand system variables Unix style";
    homepage = "https://github.com/sayanarijit/expandvars";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ geluk ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ geluk ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
