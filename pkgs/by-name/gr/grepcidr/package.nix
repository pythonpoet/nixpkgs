{
  lib,
  stdenv,
  fetchurl,
}:

stdenv.mkDerivation rec {
  pname = "grepcidr";
  version = "2.0";

  src = fetchurl {
    url = "http://www.pc-tools.net/files/unix/${pname}-${version}.tar.gz";
    sha256 = "1yzpa1nigmmp4hir6377hrkpp0z6jnxgccaw2jbqgydbglvnm231";
  };

  installFlags = [ "PREFIX=$(out)" ];

  meta = {
    description = "Filter IPv4 and IPv6 addresses matching CIDR patterns";
    homepage = "https://www.pc-tools.net/unix/grepcidr/";
<<<<<<< HEAD
    license = lib.licenses.gpl3;
    platforms = lib.platforms.unix;
    maintainers = [ lib.maintainers.fadenb ];
||||||| 213fed0310e3
    license = licenses.gpl3;
    platforms = platforms.unix;
    maintainers = [ maintainers.fadenb ];
=======
    license = lib.licenses.gpl3;
    platforms = lib.platforms.unix;
>>>>>>> master
    mainProgram = "grepcidr";
  };
}
