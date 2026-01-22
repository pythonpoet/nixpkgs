{
  lib,
  buildPythonPackage,
  fetchPypi,
  pandoc,
  pytestCheckHook,
  requests,
  setuptools,
  publicsuffix-list,
}:

buildPythonPackage (finalAttrs: {
  pname = "publicsuffixlist";
  version = "1.0.2.20260117";
  pyproject = true;

  src = fetchPypi {
    inherit (finalAttrs) pname version;
    hash = "sha256-JOESMNtP5Nfmi7QyA/gL9Sf2FMBiWn3CdJ17BETYWOU=";
  };

  postPatch = ''
    rm publicsuffixlist/public_suffix_list.dat
    ln -s ${publicsuffix-list}/share/publicsuffix/public_suffix_list.dat publicsuffixlist/public_suffix_list.dat
  '';

  build-system = [ setuptools ];

  optional-dependencies = {
    update = [ requests ];
    readme = [ pandoc ];
  };

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "publicsuffixlist" ];

  enabledTestPaths = [ "publicsuffixlist/test.py" ];

<<<<<<< HEAD
  meta = {
    changelog = "https://github.com/ko-zu/psl/blob/v${version}-gha/CHANGES.md";
||||||| 213fed0310e3
  meta = with lib; {
    changelog = "https://github.com/ko-zu/psl/blob/v${version}-gha/CHANGES.md";
=======
  meta = {
>>>>>>> master
    description = "Public Suffix List parser implementation";
    homepage = "https://github.com/ko-zu/psl";
<<<<<<< HEAD
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    license = licenses.mpl20;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/ko-zu/psl/blob/v${finalAttrs.version}-gha/CHANGES.md";
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "publicsuffixlist-download";
  };
})
