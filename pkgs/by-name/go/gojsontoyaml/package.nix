{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "gojsontoyaml";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "brancz";
    repo = "gojsontoyaml";
    rev = "v${version}";
    sha256 = "sha256-ebxz2uTH7XwD3j6JnsfET6aCGYjvsCjow/sU9pagg50=";
  };

  vendorHash = null;

  meta = {
    description = "Simply tool to convert json to yaml written in Go";
    mainProgram = "gojsontoyaml";
    homepage = "https://github.com/brancz/gojsontoyaml";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = [ lib.maintainers.bryanasdev000 ];
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = [ maintainers.bryanasdev000 ];
=======
    license = lib.licenses.mit;
    maintainers = [ ];
>>>>>>> master
  };
}
