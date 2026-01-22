{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  lxmf,
  qrcode,
  rns,
  setuptools,
  urwid,
}:

buildPythonPackage (finalAttrs: {
  pname = "nomadnet";
  version = "0.9.7";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "markqvist";
    repo = "NomadNet";
    tag = finalAttrs.version;
    hash = "sha256-IDEbyvTX5PLPqDQ8gj5UwNkGCn+5wJx2xkYJ8BIWmWI=";
  };

  build-system = [ setuptools ];

  dependencies = [
    rns
    lxmf
    urwid
    qrcode
  ];

  # Module has no tests
  doCheck = false;

  pythonImportsCheck = [ "nomadnet" ];

  meta = {
    description = "Off-grid, resilient mesh communication";
    homepage = "https://github.com/markqvist/NomadNet";
<<<<<<< HEAD
    changelog = "https://github.com/markqvist/NomadNet/releases/tag/${version}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/markqvist/NomadNet/releases/tag/${version}";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/markqvist/NomadNet/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "nomadnet";
  };
})
