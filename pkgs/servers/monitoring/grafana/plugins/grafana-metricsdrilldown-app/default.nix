{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-metricsdrilldown-app";
<<<<<<< HEAD
  version = "1.0.22";
  zipHash = "sha256-ymsvDpx54x41AOnfJ6tiP87b0x+5C6bqfHOUjyEiaKM=";
  meta = {
||||||| 213fed0310e3
  version = "1.0.22";
  zipHash = "sha256-ymsvDpx54x41AOnfJ6tiP87b0x+5C6bqfHOUjyEiaKM=";
  meta = with lib; {
=======
  version = "1.0.28";
  zipHash = "sha256-ivWufoJ98aXJ9av7WNXU9foBDkPENC3f0zOXPjDlOSg=";
  meta = {
>>>>>>> master
    description = "Queryless experience for browsing Prometheus-compatible metrics. Quickly find related metrics without writing PromQL queries";
    license = lib.licenses.agpl3Only;
    maintainers = [ lib.maintainers.marcel ];
    platforms = lib.platforms.unix;
  };
}
