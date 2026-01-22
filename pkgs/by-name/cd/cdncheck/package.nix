{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule (finalAttrs: {
  pname = "cdncheck";
<<<<<<< HEAD
  version = "1.2.11";
||||||| 213fed0310e3
  version = "1.2.10";
=======
  version = "1.2.19";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "projectdiscovery";
    repo = "cdncheck";
<<<<<<< HEAD
    tag = "v${version}";
    hash = "sha256-8EBOvwYsanLkz1DbBwprrP8zZrMX1a/od517qubwzBk=";
||||||| 213fed0310e3
    tag = "v${version}";
    hash = "sha256-KX+LEVRRPGtMEmYgrrSWBsvXyd7nvC5CHoRNI3kuVqI=";
=======
    tag = "v${finalAttrs.version}";
    hash = "sha256-gb+M/y1MADwCR9gz1+mSXbvE3sSV8FKTDSz+Y9U2gfU=";
>>>>>>> master
  };

<<<<<<< HEAD
  vendorHash = "sha256-tJXfJHEZ1KysnJIkVX+UxP3CnTCzlZtsTlVbCSCNeg8=";
||||||| 213fed0310e3
  vendorHash = "sha256-XLfbuqyu+U11v8TZifPyltLQtx+zAFxlTh0rgpXOpYU=";
=======
  vendorHash = "sha256-Tc8qrML7u5qE0zVe7JCL1BM0KbhJSwnjhnd2gX5YUaA=";
>>>>>>> master

  subPackages = [ "cmd/cdncheck/" ];

  ldflags = [
    "-s"
    "-w"
  ];

  preCheck = ''
    # Tests require network access
    substituteInPlace other_test.go \
      --replace-fail "TestCheckDomainWithFallback" "SkipTestCheckDomainWithFallback" \
      --replace-fail "TestCheckDNSResponse" "SkipTestCheckDNSResponse"
  '';

  meta = {
    description = "Tool to detect various technology for a given IP address";
    homepage = "https://github.com/projectdiscovery/cdncheck";
    changelog = "https://github.com/projectdiscovery/cdncheck/releases/tag/v${finalAttrs.src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ fab ];
    mainProgram = "cdncheck";
  };
})
