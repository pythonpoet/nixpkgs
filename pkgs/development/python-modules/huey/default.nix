{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  setuptools,
  redis,
}:

buildPythonPackage (finalAttrs: {
  pname = "huey";
  version = "2.6.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "coleifer";
    repo = "huey";
    tag = finalAttrs.version;
    hash = "sha256-vXp8xISf8g1VjIus/Xr4wKFFaVg5x4CXgP8IUUKYl+o=";
  };

  build-system = [ setuptools ];

  dependencies = [ redis ];

  # connects to redis
  doCheck = false;

<<<<<<< HEAD
  meta = {
    changelog = "https://github.com/coleifer/huey/blob/${src.tag}/CHANGELOG.md";
    description = "Little task queue for python";
||||||| 213fed0310e3
  meta = with lib; {
    changelog = "https://github.com/coleifer/huey/blob/${src.tag}/CHANGELOG.md";
    description = "Little task queue for python";
=======
  pythonImportsCheck = [ "huey" ];

  meta = {
    description = "Module to queue tasks";
>>>>>>> master
    homepage = "https://github.com/coleifer/huey";
<<<<<<< HEAD
    license = lib.licenses.mit;
||||||| 213fed0310e3
    license = licenses.mit;
=======
    changelog = "https://github.com/coleifer/huey/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
>>>>>>> master
    maintainers = [ ];
  };
})
