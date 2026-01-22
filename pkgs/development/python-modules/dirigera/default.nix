{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pydantic,
  pytestCheckHook,
  requests,
  setuptools,
  websocket-client,
}:

buildPythonPackage rec {
  pname = "dirigera";
  version = "1.2.5";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Leggin";
    repo = "dirigera";
    tag = version;
    hash = "sha256-xFiAhlNbl20MPFNkl8J4vx+KgvINYS3P5EAQxc620/k=";
  };

  build-system = [ setuptools ];

  dependencies = [
    pydantic
    requests
    websocket-client
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "dirigera" ];

  meta = {
    description = "Module for controlling the IKEA Dirigera Smart Home Hub";
    homepage = "https://github.com/Leggin/dirigera";
<<<<<<< HEAD
    changelog = "https://github.com/Leggin/dirigera/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/Leggin/dirigera/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/Leggin/dirigera/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "generate-token";
  };
}
