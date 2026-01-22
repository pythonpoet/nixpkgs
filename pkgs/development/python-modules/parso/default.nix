{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "parso";
  version = "0.8.5";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "davidhalter";
    repo = "parso";
    tag = "v${version}";
    hash = "sha256-faSXCrOkybLr0bboF/8rPV/Humq8s158A3UOpdlYi0I=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

<<<<<<< HEAD
  disabledTests = lib.optionals (pythonAtLeast "3.10") [
    # python changed exception message format in 3.10, 3.10 not yet supported
    "test_python_exception_matches"
  ];

  meta = {
||||||| 213fed0310e3
  disabledTests = lib.optionals (pythonAtLeast "3.10") [
    # python changed exception message format in 3.10, 3.10 not yet supported
    "test_python_exception_matches"
  ];

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    description = "Python Parser";
    homepage = "https://parso.readthedocs.io/en/latest/";
<<<<<<< HEAD
    changelog = "https://github.com/davidhalter/parso/blob/master/CHANGELOG.rst";
    license = lib.licenses.mit;
||||||| 213fed0310e3
    changelog = "https://github.com/davidhalter/parso/blob/master/CHANGELOG.rst";
    license = licenses.mit;
=======
    changelog = "https://github.com/davidhalter/parso/blob/${src.tag}/CHANGELOG.rst";
    license = lib.licenses.mit;
>>>>>>> master
  };
}
