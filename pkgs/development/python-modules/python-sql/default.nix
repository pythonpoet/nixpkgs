{
  lib,
  fetchFromGitLab,
  buildPythonPackage,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "python-sql";
  version = "1.7.0";
  pyproject = true;

  src = fetchFromGitLab {
    domain = "foss.heptapod.net";
    owner = "tryton";
    repo = "python-sql";
    tag = version;
    hash = "sha256-JhMJEng6QftWBmJIC2pYlf9fkHHmSd3k0tSwr35MmVQ=";
  };

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "sql" ];

  meta = {
    description = "Library to write SQL queries in a pythonic way";
    homepage = "https://foss.heptapod.net/tryton/python-sql";
<<<<<<< HEAD
    changelog = "https://foss.heptapod.net/tryton/python-sql/-/blob/${version}/CHANGELOG";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ johbo ];
||||||| 213fed0310e3
    changelog = "https://foss.heptapod.net/tryton/python-sql/-/blob/${version}/CHANGELOG";
    license = licenses.bsd3;
    maintainers = with maintainers; [ johbo ];
=======
    changelog = "https://foss.heptapod.net/tryton/python-sql/-/blob/${src.tag}/CHANGELOG";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ johbo ];
>>>>>>> master
  };
}
