{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "pyprobables";
  version = "0.6.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "barrust";
    repo = "pyprobables";
    tag = "v${version}";
    hash = "sha256-CxxpiYtqoAm81YjL6nTFIk4MnBG+1n3wbnW8u29lQlw=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "probables" ];

  meta = {
    description = "Probabilistic data structures";
    homepage = "https://github.com/barrust/pyprobables";
<<<<<<< HEAD
    changelog = "https://github.com/barrust/pyprobables/blob/v${version}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/barrust/pyprobables/blob/v${version}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/barrust/pyprobables/blob/${src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
