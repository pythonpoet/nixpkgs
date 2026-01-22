{
  lib,
  bundlerApp,
  bundlerUpdateScript,
}:

bundlerApp {
  pname = "riemann-tools";
  gemdir = ./.;
  exes = [
    "riemann-apache-status"
    "riemann-bench"
    "riemann-cloudant"
    "riemann-consul"
    "riemann-dir-files-count"
    "riemann-dir-space"
    "riemann-diskstats"
    "riemann-fd"
    "riemann-freeswitch"
    "riemann-haproxy"
    "riemann-health"
    "riemann-kvminstance"
    "riemann-memcached"
    "riemann-net"
    "riemann-nginx-status"
    "riemann-ntp"
    "riemann-portcheck"
    "riemann-proc"
    "riemann-varnish"
    "riemann-zookeeper"
  ];

  passthru.updateScript = bundlerUpdateScript "riemann-tools";

  meta = {
    description = "Tools to submit data to Riemann";
    homepage = "https://riemann.io";
<<<<<<< HEAD
    maintainers = with lib.maintainers; [
      manveru
||||||| 213fed0310e3
    maintainers = with maintainers; [
      manveru
=======
    maintainers = with lib.maintainers; [
>>>>>>> master
      nicknovitski
    ];
    license = lib.licenses.mit;
  };
}
