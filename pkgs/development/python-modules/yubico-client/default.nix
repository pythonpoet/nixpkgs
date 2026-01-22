{
  lib,
  buildPythonPackage,
  fetchPypi,
  requests,
}:

buildPythonPackage rec {
  pname = "yubico-client";
  version = "1.13.0";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    sha256 = "e3b86cd2a123105edfacad40551c7b26e9c1193d81ffe168ee704ebfd3d11162";
  };

  propagatedBuildInputs = [ requests ];

  # pypi package missing test_utils and github releases is behind
  doCheck = false;

  meta = {
    description = "Verifying Yubico OTPs based on the validation protocol version 2.0";
    homepage = "https://github.com/Kami/python-yubico-client/";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ peterromfeldhk ];
    license = lib.licenses.bsd3;
||||||| 213fed0310e3
    maintainers = with maintainers; [ peterromfeldhk ];
    license = licenses.bsd3;
=======
    license = lib.licenses.bsd3;
>>>>>>> master
  };
}
