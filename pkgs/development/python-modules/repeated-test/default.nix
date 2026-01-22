{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools-scm,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "repeated-test";
  version = "2.3.3";
  pyproject = true;

  src = fetchPypi {
    pname = "repeated_test";
    inherit version;
    hash = "sha256-3YPU8SL9rud5s0pnwwH5TJk1MXsDhdkDnZp/Oj6sgXs=";
  };

  nativeBuildInputs = [ setuptools-scm ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "repeated_test" ];

  meta = {
    description = "Unittest-compatible framework for repeating a test function over many fixtures";
    homepage = "https://github.com/epsy/repeated_test";
    changelog = "https://github.com/epsy/repeated_test/releases/tag/v${version}";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ tjni ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ tjni ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
