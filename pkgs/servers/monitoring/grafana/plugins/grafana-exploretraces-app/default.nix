{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-exploretraces-app";
<<<<<<< HEAD
  version = "1.2.0";
  zipHash = "sha256-QXBOODMgFJvPLgr1Gr6mkpW2YJwYlDO/ZXL3BlEhEJ0=";
  meta = {
||||||| 213fed0310e3
  version = "1.2.0";
  zipHash = "sha256-QXBOODMgFJvPLgr1Gr6mkpW2YJwYlDO/ZXL3BlEhEJ0=";
  meta = with lib; {
=======
  version = "1.3.0";
  zipHash = "sha256-7dSaO+m67oQ3WlL+SC+IsuzFeZ2GtSBJORggd4YENxU=";
  meta = {
>>>>>>> master
    description = "Opinionated traces app";
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
