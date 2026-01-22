{
  buildPythonPackage,
  fetchFromGitHub,
  hatchling,
  lib,
  pytestCheckHook,
  hatch-vcs,
}:

buildPythonPackage (finalAttrs: {
  pname = "flynt";
  version = "1.0.6";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ikamensh";
    repo = "flynt";
    tag = finalAttrs.version;
    hash = "sha256-SkkCA4fEHplt9HkEn+QOq4k9lW5qJeZzLZEbNEtKBSo=";
  };

  build-system = [
    hatchling
    hatch-vcs
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "flynt" ];

  disabledTests = [
    # AssertionError
    "test_fstringify"
    "test_mixed_quote_types_unsafe"
  ];

  meta = {
    description = "Tool to automatically convert old string literal formatting to f-strings";
    homepage = "https://github.com/ikamensh/flynt";
<<<<<<< HEAD
    changelog = "https://github.com/ikamensh/flynt/blob/${version}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ cpcloud ];
||||||| 213fed0310e3
    changelog = "https://github.com/ikamensh/flynt/blob/${version}/CHANGELOG.md";
    license = licenses.mit;
    maintainers = with maintainers; [ cpcloud ];
=======
    changelog = "https://github.com/ikamensh/flynt/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ cpcloud ];
>>>>>>> master
    mainProgram = "flynt";
  };
})
