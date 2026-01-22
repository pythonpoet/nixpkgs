{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "puremagic";
  version = "1.30";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "cdgriffith";
    repo = "puremagic";
    tag = version;
    hash = "sha256-k2xrcML8XxI9cMTQTv0pDLkOrmEr5mbDnVsyWuD1rEc=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "puremagic" ];

  meta = {
    description = "Implementation of magic file detection";
    homepage = "https://github.com/cdgriffith/puremagic";
    changelog = "https://github.com/cdgriffith/puremagic/blob/${src.tag}/CHANGELOG.md";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ globin ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ globin ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
  };
}
