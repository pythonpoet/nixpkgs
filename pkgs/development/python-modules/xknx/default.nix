{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  cryptography,
  ifaddr,
  freezegun,
  pytest-asyncio,
  pytestCheckHook,
  setuptools,
}:

buildPythonPackage (finalAttrs: {
  pname = "xknx";
  version = "3.14.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "XKNX";
    repo = "xknx";
    tag = finalAttrs.version;
    hash = "sha256-22xKxdjf0WEF2efHiGCYVhTCZ5jrD+26oqBdlxHwYdU=";
  };

  build-system = [ setuptools ];

  dependencies = [
    cryptography
    ifaddr
  ];

  nativeCheckInputs = [
    freezegun
    pytest-asyncio
    pytestCheckHook
  ];

  pytestFlags = [ "--asyncio-mode=auto" ];

  pythonImportsCheck = [ "xknx" ];

  disabledTests = [
    # Test requires network access
    "test_routing_indication_multicast"
    "test_scan_timeout"
    "test_start_secure_routing_explicit_keyring"
    "test_start_secure_routing_knx_keys"
    "test_start_secure_routing_manual"
  ];

  meta = {
    description = "KNX Library Written in Python";
    longDescription = ''
      XKNX is an asynchronous Python library for reading and writing KNX/IP
      packets. It provides support for KNX/IP routing and tunneling devices.
    '';
    homepage = "https://github.com/XKNX/xknx";
<<<<<<< HEAD
    changelog = "https://github.com/XKNX/xknx/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    platforms = lib.platforms.linux;
||||||| 213fed0310e3
    changelog = "https://github.com/XKNX/xknx/releases/tag/${src.tag}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
    platforms = platforms.linux;
=======
    changelog = "https://github.com/XKNX/xknx/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    platforms = lib.platforms.linux;
>>>>>>> master
  };
})
