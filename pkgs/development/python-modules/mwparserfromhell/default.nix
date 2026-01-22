{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pytestCheckHook,
  setuptools,
  setuptools-scm,
}:

buildPythonPackage rec {
  pname = "mwparserfromhell";
  version = "0.7.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "earwig";
    repo = "mwparserfromhell";
    tag = "v${version}";
    hash = "sha256-yPj272bMh/pLapc7lDgP4+AnDBpE2FrDICRUxizIcSA=";
  };

  postPatch = ''
    substituteInPlace setup.py \
      --replace '"pytest-runner"' ""
  '';

  build-system = [
    setuptools
    setuptools-scm
  ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "mwparserfromhell" ];

<<<<<<< HEAD
  meta = {
    description = "MWParserFromHell is a parser for MediaWiki wikicode";
||||||| 213fed0310e3
  meta = with lib; {
    description = "MWParserFromHell is a parser for MediaWiki wikicode";
=======
  meta = {
    description = "Parser for MediaWiki wikicode";
>>>>>>> master
    homepage = "https://mwparserfromhell.readthedocs.io/";
<<<<<<< HEAD
    changelog = "https://github.com/earwig/mwparserfromhell/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ melling ];
||||||| 213fed0310e3
    changelog = "https://github.com/earwig/mwparserfromhell/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ melling ];
=======
    changelog = "https://github.com/earwig/mwparserfromhell/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
  };
}
