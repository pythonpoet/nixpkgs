{
  lib,
  aiohttp,
  attrs,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:

buildPythonPackage rec {
  pname = "eternalegypt";
  version = "0.0.18";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "amelchio";
    repo = "eternalegypt";
    tag = "v${version}";
    hash = "sha256-dS4APZWOI8im1Ls1A5750FedTWBy3UpXvJmYpd1po94=";
  };

  build-system = [ setuptools ];

  dependencies = [
    aiohttp
    attrs
  ];

  # Project has no tests
  doCheck = false;

  pythonImportsCheck = [ "eternalegypt" ];

  meta = {
    description = "Python API for Netgear LTE modems";
    homepage = "https://github.com/amelchio/eternalegypt";
<<<<<<< HEAD
    changelog = "https://github.com/amelchio/eternalegypt/releases/tag/v${version}";
    license = with lib.licenses; [ mit ];
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/amelchio/eternalegypt/releases/tag/v${version}";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/amelchio/eternalegypt/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
