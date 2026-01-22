{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  lxml,
  lxml-html-clean,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "html-text";
  version = "0.6.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "zytedata";
    repo = "html-text";
    tag = finalAttrs.version;
    hash = "sha256-e9gkibQv8mn1Jbt77UmpauOeTqhJQhY9R5Sge/iYi+U=";
  };

  build-system = [ setuptools ];

  dependencies = [
    lxml
    lxml-html-clean
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "html_text" ];

  meta = {
    description = "Extract text from HTML";
    homepage = "https://github.com/zytedata/html-text";
<<<<<<< HEAD
    changelog = "https://github.com/zytedata/html-text/blob/${version}/CHANGES.rst";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ambroisie ];
||||||| 213fed0310e3
    changelog = "https://github.com/zytedata/html-text/blob/${version}/CHANGES.rst";
    license = licenses.mit;
    maintainers = with maintainers; [ ambroisie ];
=======
    changelog = "https://github.com/zytedata/html-text/blob/${finalAttrs.version}/CHANGES.rst";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ambroisie ];
>>>>>>> master
  };
})
