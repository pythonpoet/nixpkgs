{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-polystat-panel";
<<<<<<< HEAD
  version = "2.1.15";
  zipHash = "sha256-l6jhlnZ9E8OdCHcX0HMpD1VjShq+mtBYeciPNkzsjlA=";
  meta = {
||||||| 213fed0310e3
  version = "2.1.15";
  zipHash = "sha256-l6jhlnZ9E8OdCHcX0HMpD1VjShq+mtBYeciPNkzsjlA=";
  meta = with lib; {
=======
  version = "2.1.16";
  zipHash = "sha256-Lxug7dL33I5VDtwE5cZLa6LyCOMF244ETYY/ORvndTc=";
  meta = {
>>>>>>> master
    description = "Hexagonal multi-stat panel for Grafana";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ lukegb ];
    platforms = lib.platforms.unix;
  };
}
