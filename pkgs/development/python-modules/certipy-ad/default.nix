{
  lib,
  argcomplete,
  asn1crypto,
  beautifulsoup4,
  buildPythonPackage,
  cryptography,
  dnspython,
  dsinternals,
  fetchFromGitHub,
  httpx,
  impacket,
  ldap3,
  pyasn1,
  pycryptodome,
  pyopenssl,
  requests,
  setuptools,
  unicrypto,
}:

buildPythonPackage (finalAttrs: {
  pname = "certipy-ad";
  version = "5.0.4";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "ly4k";
    repo = "Certipy";
    tag = finalAttrs.version;
    hash = "sha256-5STwBpX+8EsgRYMEirvqEhu4oMDs4hf4lDge1ShpKf4=";
  };

  pythonRelaxDeps = [
    "argcomplete"
    "beautifulsoup4"
    "cryptography"
    "dnspython"
    "ldap3"
    "pycryptodome"
    "pyopenssl"
  ];

  build-system = [ setuptools ];

  dependencies = [
    argcomplete
    asn1crypto
    beautifulsoup4
    cryptography
    dnspython
    dsinternals
    httpx
    impacket
    ldap3
    pyasn1
    pycryptodome
    pyopenssl
    requests
    setuptools
    unicrypto
  ];

  # Project has no tests
  doCheck = false;

  pythonImportsCheck = [ "certipy" ];

  meta = {
    description = "Library and CLI tool to enumerate and abuse misconfigurations in Active Directory Certificate Services";
    homepage = "https://github.com/ly4k/Certipy";
<<<<<<< HEAD
    changelog = "https://github.com/ly4k/Certipy/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
||||||| 213fed0310e3
    changelog = "https://github.com/ly4k/Certipy/releases/tag/${src.tag}";
    license = licenses.mit;
    maintainers = with maintainers; [ fab ];
=======
    changelog = "https://github.com/ly4k/Certipy/releases/tag/${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
>>>>>>> master
    mainProgram = "certipy";
  };
})
