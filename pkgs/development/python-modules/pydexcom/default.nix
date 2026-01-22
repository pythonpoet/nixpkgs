{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  hatch-vcs,
  hatchling,
  requests,
}:

buildPythonPackage rec {
  pname = "pydexcom";
  version = "0.5.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "gagebenne";
    repo = "pydexcom";
    tag = version;
    hash = "sha256-IqSZZHe5epcgO2uoIsGkNaac3+UplHzqEcFWTzwAqPg=";
  };

  build-system = [
    hatchling
    hatch-vcs
  ];

  dependencies = [ requests ];

  # Tests are interacting with the Dexcom API
  doCheck = false;

  pythonImportsCheck = [ "pydexcom" ];

  meta = {
    description = "Python API to interact with Dexcom Share service";
    homepage = "https://github.com/gagebenne/pydexcom";
<<<<<<< HEAD
    changelog = "https://github.com/gagebenne/pydexcom/releases/tag/${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/gagebenne/pydexcom/releases/tag/${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/gagebenne/pydexcom/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
