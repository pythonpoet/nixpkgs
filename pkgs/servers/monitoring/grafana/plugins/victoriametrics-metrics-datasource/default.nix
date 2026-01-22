{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "victoriametrics-metrics-datasource";
<<<<<<< HEAD
  version = "0.19.7";
  zipHash = "sha256-0XqZoL01/LwcMKFYEcFl88ekCrp94676bvVYj2aBltk=";
||||||| 213fed0310e3
  version = "0.19.5";
  zipHash = "sha256-wKLtfCI/onYPFrtP1EUrCbZ+OCHicshRZkZtltH6LzI=";
=======
  version = "0.20.1";
  zipHash = "sha256-OITIzKV4eGc4RniVFrgp4VBAM5m38Zms8xj9EgC5YZc=";
>>>>>>> master
  meta = {
    description = "VictoriaMetrics metrics datasource for Grafana";
    license = lib.licenses.agpl3Only;
    maintainers = [ lib.maintainers.shawn8901 ];
    platforms = lib.platforms.unix;
  };
}
