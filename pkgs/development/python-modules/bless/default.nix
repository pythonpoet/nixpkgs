{
  lib,
  aioconsole,
  bleak,
  buildPythonPackage,
  dbus-next,
  fetchFromGitHub,
  numpy,
  pytest-asyncio,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "bless";
  version = "0.3.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "kevincar";
    repo = "bless";
    tag = "v${version}";
    hash = "sha256-Ks7+OYSrPjXgpCrEEJayxp5Gn84SZbdbyc5c3ZMBEwI=";
  };

  postPatch = ''
    sed -i -e '22,25d' setup.py
  '';

  build-system = [ setuptools ];

  dependencies = [
    bleak
    dbus-next
  ];

  nativeCheckInputs = [
    aioconsole
    numpy
    pytest-asyncio
    pytestCheckHook
  ];

  pythonImportsCheck = [ "bless" ];

<<<<<<< HEAD
  meta = {
    broken = true; # not compatible with bleak>=1.0 and no maintenance since 2024-03
||||||| 213fed0310e3
  meta = with lib; {
    broken = true; # not compatible with bleak>=1.0 and no maintenance since 2024-03
=======
  meta = {
>>>>>>> master
    description = "Library for creating a BLE Generic Attribute Profile (GATT) server";
    homepage = "https://github.com/kevincar/bless";
<<<<<<< HEAD
    changelog = "https://github.com/kevincar/bless/releases/tag/v${version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/kevincar/bless/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/kevincar/bless/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
