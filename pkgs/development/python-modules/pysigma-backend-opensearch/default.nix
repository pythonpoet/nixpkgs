{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  pysigma,
  pysigma-backend-elasticsearch,
}:

buildPythonPackage rec {
  pname = "pysigma-backend-opensearch";
  version = "2.0.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "SigmaHQ";
    repo = "pySigma-backend-opensearch";
    tag = "v${version}";
    hash = "sha256-N1Gs/L2kCcKkhHYXCyfmentvl1RORUrWIEyxTEsvNKg=";
  };

  pythonRelaxDeps = [ "pysigma" ];

  build-system = [ poetry-core ];

  dependencies = [
    pysigma
    pysigma-backend-elasticsearch
  ];

  # Starting with 2.0.0 all tests require network access
  doCheck = false;

  #pythonImportsCheck = [ "sigma.backends.opensearch" ];

<<<<<<< HEAD
  disabledTests = [
    # Tests requires network access
    "test_connect_lucene"
  ];

  meta = {
||||||| 213fed0310e3
  disabledTests = [
    # Tests requires network access
    "test_connect_lucene"
  ];

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    description = "Library to support OpenSearch for pySigma";
    homepage = "https://github.com/SigmaHQ/pySigma-backend-opensearch";
<<<<<<< HEAD
    changelog = "https://github.com/SigmaHQ/pySigma-backend-opensearch/releases/tag/v${version}";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/SigmaHQ/pySigma-backend-opensearch/releases/tag/v${version}";
    license = licenses.lgpl21Only;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/SigmaHQ/pySigma-backend-opensearch/releases/tag/${src.tag}";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
