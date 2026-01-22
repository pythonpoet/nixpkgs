{
  lib,
  aiohttp,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
}:

buildPythonPackage (finalAttrs: {
  pname = "switchbot-api";
  version = "2.10.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "SeraphicCorp";
    repo = "py-switchbot-api";
    tag = "v${finalAttrs.version}";
    hash = "sha256-s6ezIkW36eIaxqedOfIk4KNhCwjXPFkc49qqK2p2eGw=";
  };

  build-system = [ poetry-core ];

  dependencies = [ aiohttp ];

  # Module has no tests
  doCheck = false;

  pythonImportsCheck = [ "switchbot_api" ];

  meta = {
    description = "Asynchronous library to use Switchbot API";
    homepage = "https://github.com/SeraphicCorp/py-switchbot-api";
<<<<<<< HEAD
    changelog = "https://github.com/SeraphicCorp/py-switchbot-api/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/SeraphicCorp/py-switchbot-api/releases/tag/${src.tag}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/SeraphicCorp/py-switchbot-api/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
