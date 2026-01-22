{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  unittestCheckHook,
}:

buildPythonPackage rec {
  pname = "simplefix";
  version = "1.0.17";
  format = "setuptools";

  src = fetchFromGitHub {
    repo = "simplefix";
    owner = "da4089";
    tag = "v${version}";
    hash = "sha256-D85JW3JRQ1xErw6krMbAg94WYjPi76Xqjv/MGNMY5ZU=";
  };

  nativeCheckInputs = [ unittestCheckHook ];

  pythonImportsCheck = [ "simplefix" ];

  unittestFlagsArray = [
    "-s"
    "test"
  ];

  meta = {
    description = "Simple FIX Protocol implementation for Python";
    homepage = "https://github.com/da4089/simplefix";
    changelog = "https://github.com/da4089/simplefix/releases/tag/v${version}";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ catern ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ catern ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
