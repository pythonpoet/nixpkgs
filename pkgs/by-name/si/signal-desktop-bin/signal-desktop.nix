{ callPackage, commandLineArgs }:
callPackage ./generic.nix { inherit commandLineArgs; } rec {
  pname = "signal-desktop-bin";
<<<<<<< HEAD
  version = "7.83.0";
||||||| 213fed0310e3
  version = "7.80.0";
=======
  version = "7.85.0";
>>>>>>> master

  libdir = "opt/Signal";
  bindir = libdir;
  extractPkg = "dpkg-deb -x $downloadedFile $out";

  url = "https://updates.signal.org/desktop/apt/pool/s/signal-desktop/signal-desktop_${version}_amd64.deb";
<<<<<<< HEAD
  hash = "sha256-DhtOOve8dloIbTi78gLHWars/Y9Fv6YkLkHHpRK7OWY=";
||||||| 213fed0310e3
  hash = "sha256-d0OTlGtTGN4d7ZIShhVc39TiSJvEg9UMonqeP++R7x4=";
=======
  hash = "sha256-5DJho9aYNwgasZsSuChEvoDK7N1H+n3RdDh7FMw73SA=";
>>>>>>> master
}
