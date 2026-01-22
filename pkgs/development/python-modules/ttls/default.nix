{
  lib,
  aiohttp,
  buildPythonPackage,
  fetchFromGitHub,
  hatchling,
  uv-dynamic-versioning,
}:

buildPythonPackage rec {
  pname = "ttls";
  version = "1.10.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "jschlyter";
    repo = "ttls";
    tag = "v${version}";
    hash = "sha256-ETqjL7pl/FekzMusBtq8jMr72/j7Dy/zadcObSNaKqU=";
  };

  build-system = [
    hatchling
    uv-dynamic-versioning
  ];

  dependencies = [ aiohttp ];

  # Module has no tests
  doCheck = false;

  pythonImportsCheck = [ "ttls" ];

  meta = {
    description = "Module to interact with Twinkly LEDs";
    homepage = "https://github.com/jschlyter/ttls";
<<<<<<< HEAD
    changelog = "https://github.com/jschlyter/ttls/blob/v${version}/CHANGES.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/jschlyter/ttls/blob/v${version}/CHANGES.md";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/jschlyter/ttls/blob/${src.tag}/CHANGES.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    mainProgram = "ttls";
>>>>>>> master
  };
}
