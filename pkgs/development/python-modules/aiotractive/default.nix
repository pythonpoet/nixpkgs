{
  lib,
  aiohttp,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  yarl,
}:

buildPythonPackage rec {
  pname = "aiotractive";
  version = "0.7.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "zhulik";
    repo = "aiotractive";
    tag = "v${version}";
    hash = "sha256-tdeRl3fY+OPlLnh/KixdKSy6WLIH/qQR3icoUkKGeGo=";
  };

  build-system = [ setuptools ];

  dependencies = [
    aiohttp
    yarl
  ];

  # Project has no tests
  doCheck = false;

  pythonImportsCheck = [ "aiotractive" ];

<<<<<<< HEAD
  meta = {
    changelog = "https://github.com/zhulik/aiotractive/releases/tag/v${version}";
||||||| 213fed0310e3
  meta = with lib; {
    changelog = "https://github.com/zhulik/aiotractive/releases/tag/v${version}";
=======
  meta = {
>>>>>>> master
    description = "Python client for the Tractive REST API";
    homepage = "https://github.com/zhulik/aiotractive";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/zhulik/aiotractive/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
