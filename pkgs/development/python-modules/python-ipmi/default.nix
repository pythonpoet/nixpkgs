{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage rec {
  pname = "python-ipmi";
  version = "0.5.8";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "kontron";
    repo = "python-ipmi";
    tag = version;
    hash = "sha256-9xPnLNyHKvVebRM/mIoEVzhT2EwmgJxCTztLSZrnXVc=";
  };

  postPatch = ''
    substituteInPlace setup.py \
      --replace-fail "version=version," "version='${version}',"
  '';

  build-system = [ setuptools ];

  nativeCheckInputs = [ pytestCheckHook ];

  pythonImportsCheck = [ "pyipmi" ];

  meta = {
    description = "Python IPMI Library";
    homepage = "https://github.com/kontron/python-ipmi";
<<<<<<< HEAD
    license = with lib.licenses; [ lgpl2Plus ];
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    license = with licenses; [ lgpl2Plus ];
    maintainers = with maintainers; [ fab ];
=======
    license = lib.licenses.lgpl2Plus;
    maintainers = with lib.maintainers; [ fab ];
    mainProgram = "ipmitool.py";
>>>>>>> master
  };
}
