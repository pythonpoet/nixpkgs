{
  lib,
  aresponses,
  async-modbus,
  async-timeout,
  asyncclick,
  buildPythonPackage,
  construct,
  exceptiongroup,
  fetchFromGitHub,
  pandas,
  pytest-asyncio,
  pytestCheckHook,
  python-slugify,
  setuptools,
  tenacity,
}:

buildPythonPackage rec {
  pname = "nibe";
  version = "2.21.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "yozik04";
    repo = "nibe";
    tag = version;
    hash = "sha256-I4Qgwdx5alkNso0FMz4wRWZffbDQm5VblmPdwtU/jXg=";
  };

  pythonRelaxDeps = [ "async-modbus" ];

  build-system = [ setuptools ];

  dependencies = [
    async-modbus
    async-timeout
    construct
    exceptiongroup
    tenacity
  ];

  optional-dependencies = {
    convert = [
      pandas
      python-slugify
    ];
    cli = [ asyncclick ];
  };

  nativeCheckInputs = [
    aresponses
    pytest-asyncio
    pytestCheckHook
  ]
  ++ lib.concatAttrValues optional-dependencies;

  pythonImportsCheck = [ "nibe" ];

  meta = {
    description = "Library for the communication with Nibe heatpumps";
    homepage = "https://github.com/yozik04/nibe";
<<<<<<< HEAD
    changelog = "https://github.com/yozik04/nibe/releases/tag/${version}";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/yozik04/nibe/releases/tag/${version}";
    license = licenses.gpl3Plus;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/yozik04/nibe/releases/tag/${src.tag}";
    license = lib.licenses.gpl3Plus;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
  };
}
