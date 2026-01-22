{
  lib,
  stdenv,
  fetchFromGitHub,
  autoreconfHook,
}:

stdenv.mkDerivation rec {
  pname = "fastjson";
  version = "1.2304.0";

  src = fetchFromGitHub {
    owner = "rsyslog";
    repo = "libfastjson";
    tag = "v${version}";
    hash = "sha256-WnM6lQjHz0n5BwWWZoDBavURokcaROXJW46RZen9vj4=";
  };

  nativeBuildInputs = [
    autoreconfHook
  ];

  meta = {
    description = "Fast json library for C";
    homepage = "https://github.com/rsyslog/libfastjson";
<<<<<<< HEAD
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ nequissimus ];
    platforms = with lib.platforms; unix;
||||||| 213fed0310e3
    license = licenses.mit;
    maintainers = with maintainers; [ nequissimus ];
    platforms = with platforms; unix;
=======
    license = lib.licenses.mit;
    platforms = with lib.platforms; unix;
>>>>>>> master
  };
}
