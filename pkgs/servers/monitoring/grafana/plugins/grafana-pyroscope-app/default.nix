{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-pyroscope-app";
<<<<<<< HEAD
  version = "1.11.0";
  zipHash = "sha256-FaojRLlE+fv5hPE45wW9Id/21icrus3bDSCLs3xsmm4=";
  meta = {
||||||| 213fed0310e3
  version = "1.11.0";
  zipHash = "sha256-FaojRLlE+fv5hPE45wW9Id/21icrus3bDSCLs3xsmm4=";
  meta = with lib; {
=======
  version = "1.14.2";
  zipHash = "sha256-nRKsSPBfTN+CMrKMaV/ETM0CRxVrbkjici3mps19b/0=";
  meta = {
>>>>>>> master
    description = "Integrate seamlessly with Pyroscope, the open-source continuous profiling platform, providing a smooth, query-less experience for browsing and analyzing profiling data";
<<<<<<< HEAD
    license = lib.licenses.agpl3Only;
    teams = [ lib.teams.fslabs ];
    platforms = lib.platforms.unix;
||||||| 213fed0310e3
    license = licenses.agpl3Only;
    teams = [ lib.teams.fslabs ];
    platforms = platforms.unix;
=======
    license = lib.licenses.agpl3Only;
    maintainers = with lib.maintainers; [ lpostula ];
    platforms = lib.platforms.unix;
>>>>>>> master
  };
}
