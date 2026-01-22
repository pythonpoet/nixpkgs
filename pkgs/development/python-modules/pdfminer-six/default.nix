{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  cryptography,
  charset-normalizer,
  pytestCheckHook,
  setuptools,
  setuptools-scm,
  ocrmypdf,
}:

buildPythonPackage rec {
  pname = "pdfminer-six";
<<<<<<< HEAD
  version = "20251107";
||||||| 213fed0310e3
  version = "20250506";
=======
  version = "20251230";
>>>>>>> master
  pyproject = true;

  src = fetchFromGitHub {
    owner = "pdfminer";
    repo = "pdfminer.six";
    tag = version;
<<<<<<< HEAD
    hash = "sha256-PuRxiKL1rLpfdabH3cMywkwBoeImu/yNgEhckLzr0Z4=";
||||||| 213fed0310e3
    hash = "sha256-BE/HMl/e1KnkSc2jXU5Du5FMF+rCBv5AJ7a88oFrBgM=";
=======
    hash = "sha256-//rcpcEn4lYYEkji2bo801AWj1ThEZPRuq1hNYYyVVk=";
>>>>>>> master
  };

  build-system = [
    setuptools
    setuptools-scm
  ];

  dependencies = [
    charset-normalizer
    cryptography
  ];

  postInstall = ''
    for file in "$out/bin/"*.py; do
      mv "$file" "''${file%.py}"
    done
  '';

  pythonImportsCheck = [
    "pdfminer"
    "pdfminer.high_level"
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  disabledTests = [
    # The binary file samples/contrib/issue-1004-indirect-mediabox.pdf is
    # stripped from fix-dereference-MediaBox.patch.
    "test_contrib_issue_1004_mediabox"
  ];

  passthru = {
    tests = {
      inherit ocrmypdf;
    };
  };

  meta = {
    changelog = "https://github.com/pdfminer/pdfminer.six/blob/${src.rev}/CHANGELOG.md";
    description = "PDF parser and analyzer";
    homepage = "https://github.com/pdfminer/pdfminer.six";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ psyanticy ];
  };
}
