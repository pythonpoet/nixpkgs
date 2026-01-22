{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  click,
  pytestCheckHook,
}:

buildPythonPackage rec {
  pname = "click-command-tree";
  version = "1.2.0";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "whwright";
    repo = "click-command-tree";
    tag = version;
    hash = "sha256-oshAHCGe8p5BQ0W21bXSxrTCEFgIxZ6BmUEiWB1xAoI=";
  };

  propagatedBuildInputs = [ click ];

  nativeCheckInputs = [ pytestCheckHook ];

  enabledTestPaths = [ "tests.py" ];

  pythonImportsCheck = [ "click_command_tree" ];

  meta = {
    description = "Click plugin to show the command tree of your CLI";
    homepage = "https://github.com/whwright/click-command-tree";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ tjni ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ tjni ];
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
