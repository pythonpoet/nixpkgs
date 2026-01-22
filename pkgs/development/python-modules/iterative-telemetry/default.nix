{
  lib,
  appdirs,
  buildPythonPackage,
  distro,
  fetchFromGitHub,
  filelock,
  pytestCheckHook,
  pytest-mock,
  requests,
  setuptools-scm,
}:

buildPythonPackage rec {
  pname = "iterative-telemtry";
  version = "0.0.10";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "iterative";
    repo = "telemetry-python";
    tag = version;
    hash = "sha256-+l9JH9MbN+Pai3MIcKZJObzoPGhQipfMd7T8v4SoSws=";
  };

  build-system = [ setuptools-scm ];

  dependencies = [
    requests
    appdirs
    filelock
    distro
  ];

  nativeCheckInputs = [
    pytestCheckHook
    pytest-mock
  ];

  pythonImportsCheck = [ "iterative_telemetry" ];

  meta = {
    description = "Common library to send usage telemetry";
    homepage = "https://github.com/iterative/iterative-telemetry";
    changelog = "https://github.com/iterative/iterative-telemetry/releases/tag/${src.tag}";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ melling ];
||||||| 213fed0310e3
    license = licenses.asl20;
    maintainers = with maintainers; [ melling ];
=======
    license = lib.licenses.asl20;
>>>>>>> master
  };
}
