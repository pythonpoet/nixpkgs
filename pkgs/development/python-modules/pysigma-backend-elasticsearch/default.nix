{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  pysigma,
  pytest-cov-stub,
  pytestCheckHook,
  requests,
  writableTmpDirAsHomeHook,
}:

buildPythonPackage (finalAttrs: {
  pname = "pysigma-backend-elasticsearch";
  version = "2.0.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "SigmaHQ";
    repo = "pySigma-backend-elasticsearch";
    tag = "v${finalAttrs.version}";
    hash = "sha256-EzqzCCgHnEnBCcoYflBYN5Lb6yHvR7s5B0EtqtvVxtk=";
  };

  build-system = [ poetry-core ];

  dependencies = [ pysigma ];

  nativeCheckInputs = [
    pytest-cov-stub
    pytestCheckHook
    requests
    writableTmpDirAsHomeHook
  ];

  # Starting with 2.0.0 all tests require network access
  doCheck = false;

  #pythonImportsCheck = [ "sigma.backends.elasticsearch" ];

  meta = {
    description = "Library to support Elasticsearch for pySigma";
    homepage = "https://github.com/SigmaHQ/pySigma-backend-elasticsearch";
<<<<<<< HEAD
    changelog = "https://github.com/SigmaHQ/pySigma-backend-elasticsearch/releases/tag/v${version}";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/SigmaHQ/pySigma-backend-elasticsearch/releases/tag/v${version}";
    license = licenses.lgpl21Only;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/SigmaHQ/pySigma-backend-elasticsearch/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.lgpl21Only;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
