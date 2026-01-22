{
  lib,
  buildPythonPackage,
  certifi,
  cryptography,
  fetchFromGitHub,
  lxml,
  pyopenssl,
  pytestCheckHook,
  hatchling,
  hatch-vcs,
}:

buildPythonPackage (finalAttrs: {
  pname = "signxml";
  version = "4.2.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "XML-Security";
    repo = "signxml";
    tag = "v${finalAttrs.version}";
    hash = "sha256-IZa62HIsCsNiIlHhLgy0GRIq+E3HBnYSdy/LtDvPa/E=";
  };

  build-system = [
    hatchling
    hatch-vcs
  ];

  dependencies = [
    certifi
    cryptography
    lxml
    pyopenssl
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "signxml" ];

  enabledTestPaths = [ "test/test.py" ];

  meta = {
    description = "Python XML Signature and XAdES library";
    homepage = "https://github.com/XML-Security/signxml";
<<<<<<< HEAD
    changelog = "https://github.com/XML-Security/signxml/blob/${src.tag}/Changes.rst";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/XML-Security/signxml/blob/${src.tag}/Changes.rst";
    license = licenses.asl20;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/XML-Security/signxml/blob/${finalAttrs.src.tag}/Changes.rst";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
})
