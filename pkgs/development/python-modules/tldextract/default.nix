{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  filelock,
  idna,
  pytest-mock,
  pytestCheckHook,
  requests,
  requests-file,
  responses,
  setuptools,
  setuptools-scm,
  syrupy,
}:

buildPythonPackage (finalAttrs: {
  pname = "tldextract";
  version = "5.3.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "john-kurkowski";
    repo = "tldextract";
    tag = finalAttrs.version;
    hash = "sha256-WPf996EVVEKxD+ZFDB8nIrrd1Sxr+IOI8I19J+KMPRg=";
  };

  nativeBuildInputs = [
    setuptools
    setuptools-scm
  ];

  propagatedBuildInputs = [
    filelock
    idna
    requests
    requests-file
  ];

  nativeCheckInputs = [
    pytest-mock
    pytestCheckHook
    responses
    syrupy
  ];

  pythonImportsCheck = [ "tldextract" ];

  meta = {
    description = "Python module to accurately separate the TLD from the domain of an URL";
    longDescription = ''
      tldextract accurately separates the gTLD or ccTLD (generic or country code top-level domain)
      from the registered domain and subdomains of a URL.
    '';
    homepage = "https://github.com/john-kurkowski/tldextract";
<<<<<<< HEAD
    changelog = "https://github.com/john-kurkowski/tldextract/blob/${src.tag}/CHANGELOG.md";
    license = with lib.licenses; [ bsd3 ];
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/john-kurkowski/tldextract/blob/${src.tag}/CHANGELOG.md";
    license = with licenses; [ bsd3 ];
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/john-kurkowski/tldextract/blob/${finalAttrs.src.tag}/CHANGELOG.md";
    license = lib.licenses.bsd3;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "tldextract";
  };
})
