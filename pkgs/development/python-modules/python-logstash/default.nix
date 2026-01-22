{
  lib,
  buildPythonPackage,
  fetchPypi,
}:

buildPythonPackage rec {
  pname = "python-logstash";
  version = "0.4.8";
  format = "setuptools";

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-0E4c4R7MEH5KTzuAf8V9loEelkpVQIGzu7RHMvdO9fk=";
  };

  # no tests
  doCheck = false;

  meta = {
    description = "Python logging handler for Logstash";
    homepage = "https://github.com/vklochan/python-logstash";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [ peterromfeldhk ];
    license = lib.licenses.mit;
||||||| 213fed0310e3
    maintainers = with maintainers; [ peterromfeldhk ];
    license = licenses.mit;
=======
    license = lib.licenses.mit;
>>>>>>> master
  };
}
