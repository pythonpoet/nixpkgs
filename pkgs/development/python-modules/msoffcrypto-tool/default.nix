{
  lib,
  olefile,
  buildPythonPackage,
  fetchFromGitHub,
  poetry-core,
  cryptography,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "msoffcrypto-tool";
  version = "6.0.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "nolze";
    repo = "msoffcrypto-tool";
    tag = "v${finalAttrs.version}";
    hash = "sha256-qhnQXLkEeMfuPl2FJGX19M2B+StlzGU/wHgmRn9jcxc=";
  };

  build-system = [ poetry-core ];

  dependencies = [
    cryptography
    olefile
    setuptools
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  disabledTests = [
    # Test fails with AssertionError
    "test_cli"
  ];

  pythonImportsCheck = [ "msoffcrypto" ];

  meta = {
    description = "Python tool and library for decrypting MS Office files with passwords or other keys";
    homepage = "https://github.com/nolze/msoffcrypto-tool";
<<<<<<< HEAD
    changelog = "https://github.com/nolze/msoffcrypto-tool/blob/v${version}/CHANGELOG.md";
    license = with lib.licenses; [ mit ];
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/nolze/msoffcrypto-tool/blob/v${version}/CHANGELOG.md";
    license = with licenses; [ mit ];
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/nolze/msoffcrypto-tool/blob/v${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "msoffcrypto-tool";
  };
})
