{
  lib,
  stdenv,
  fetchurl,
}:

stdenv.mkDerivation rec {
  pname = "libmaxminddb";
  version = "1.12.2";

  src = fetchurl {
    url = meta.homepage + "/releases/download/${version}/${pname}-${version}.tar.gz";
    sha256 = "sha256-G/v477o+1kYuBOIlkGrVzl/pWKo9YmoSNbKiJT1gB0M=";
  };

  meta = {
    description = "C library for working with MaxMind geolocation DB files";
    homepage = "https://github.com/maxmind/libmaxminddb";
<<<<<<< HEAD
    license = lib.licenses.asl20;
    teams = [ lib.teams.helsinki-systems ];
||||||| 213fed0310e3
    license = licenses.asl20;
    teams = [ teams.helsinki-systems ];
=======
    license = lib.licenses.asl20;
>>>>>>> master
    mainProgram = "mmdblookup";
<<<<<<< HEAD
    platforms = lib.platforms.all;
||||||| 213fed0310e3
    platforms = platforms.all;
=======
    maintainers = with lib.maintainers; [
      das_j
      helsinki-Jo
    ];
    platforms = lib.platforms.all;
>>>>>>> master
  };
}
