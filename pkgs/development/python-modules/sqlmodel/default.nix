{
  lib,
  buildPythonPackage,
  black,
  jinja2,
  dirty-equals,
  fastapi,
  fetchFromGitHub,
  pdm-backend,
  pydantic,
  pytestCheckHook,
  sqlalchemy,
}:

buildPythonPackage rec {
  pname = "sqlmodel";
  version = "0.0.31";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "tiangolo";
    repo = "sqlmodel";
    tag = version;
    hash = "sha256-HJ8we0gYySagUvs7NEKcwe9l7KEcqmJ8+CTW/rjBdME=";
  };

  build-system = [ pdm-backend ];

  dependencies = [
    pydantic
    sqlalchemy
  ];

  nativeCheckInputs = [
    black
    jinja2
    dirty-equals
    fastapi
    pytestCheckHook
  ];

  pythonImportsCheck = [ "sqlmodel" ];

  disabledTestPaths = [
    # Coverage
    "docs_src/tutorial/"
    "tests/test_tutorial/"
  ];

  meta = {
    description = "Module to work with SQL databases";
<<<<<<< HEAD
    homepage = "https://github.com/tiangolo/sqlmodel";
    changelog = "https://github.com/tiangolo/sqlmodel/releases/tag/${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    homepage = "https://github.com/tiangolo/sqlmodel";
    changelog = "https://github.com/tiangolo/sqlmodel/releases/tag/${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    homepage = "https://github.com/fastapi/sqlmodel";
    changelog = "https://github.com/fastapi/sqlmodel/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
