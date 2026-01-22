{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  appdirs,
  click,
  flit-core,
  pytestCheckHook,
  freezegun,
}:

buildPythonPackage rec {
  pname = "taxi";
  version = "6.3.2";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "sephii";
    repo = "taxi";
    rev = version;
    hash = "sha256-zhBjULAPd1rGvTMdy7TJ3XoDDMGnoL6fyZFTVIHDvDI=";
  };

  build-system = [ flit-core ];

  dependencies = [
    appdirs
    click
  ];

  nativeCheckInputs = [
    freezegun
    pytestCheckHook
  ];

  pythonImportsCheck = [ "taxi" ];

<<<<<<< HEAD
  # Broken by the update of `click` from version 8.1.8 -> 8.2.1 in
  # https://github.com/NixOS/nixpkgs/pull/448189.
  disabledTests = [
    "test_ignore_date_error_week_day"
    "test_ignore_date_error_previous_day"
  ];

  meta = {
||||||| 213fed0310e3
  # Broken by the update of `click` from version 8.1.8 -> 8.2.1 in
  # https://github.com/NixOS/nixpkgs/pull/448189.
  disabledTests = [
    "test_ignore_date_error_week_day"
    "test_ignore_date_error_previous_day"
  ];

  meta = with lib; {
=======
  meta = {
>>>>>>> master
    homepage = "https://github.com/sephii/taxi/";
    description = "Timesheeting made easy";
    mainProgram = "taxi";
    license = lib.licenses.wtfpl;
    maintainers = with lib.maintainers; [ jocelynthode ];
  };
}
