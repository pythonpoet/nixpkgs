{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:

buildPythonPackage rec {
  pname = "hstspreload";
  version = "2025.12.3";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "sethmlarson";
    repo = "hstspreload";
    tag = version;
    hash = "sha256-K44Lzom7AQMsnJGN9RYNfZuD+wbbZtTGStjJtS/4NcE=";
  };

  build-system = [ setuptools ];

  # Tests require network connection
  doCheck = false;

  pythonImportsCheck = [ "hstspreload" ];

<<<<<<< HEAD
  meta = {
    description = "Chromium HSTS Preload list as a Python package and updated daily";
||||||| 213fed0310e3
  meta = with lib; {
    description = "Chromium HSTS Preload list as a Python package and updated daily";
=======
  meta = {
    description = "Chromium HSTS Preload list";
>>>>>>> master
    homepage = "https://github.com/sethmlarson/hstspreload";
    license = lib.licenses.bsd3;
    maintainers = [ ];
  };
}
