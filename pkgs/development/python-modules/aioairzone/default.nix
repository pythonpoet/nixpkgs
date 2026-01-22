{
  lib,
  aiohttp,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "aioairzone";
  version = "1.0.5";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "Noltari";
    repo = "aioairzone";
    tag = finalAttrs.version;
    hash = "sha256-mYCArILj+B4eXdmK8hPAQP2/QYwDoZcYGGhy3p+VABQ=";
  };

  build-system = [ setuptools ];

  dependencies = [ aiohttp ];

  # Module has no tests
  doCheck = false;

  pythonImportsCheck = [ "aioairzone" ];

  meta = {
    description = "Module to control AirZone devices";
    homepage = "https://github.com/Noltari/aioairzone";
<<<<<<< HEAD
    changelog = "https://github.com/Noltari/aioairzone/releases/tag/${src.tag}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/Noltari/aioairzone/releases/tag/${src.tag}";
    license = licenses.asl20;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/Noltari/aioairzone/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
