{ grafanaPlugin, lib }:

grafanaPlugin {
  pname = "grafana-lokiexplore-app";
  version = "1.0.31";
  zipHash = "sha256-IFt2w4DYgxYw86XngS8xfSAMqMdbf3fxml/KwGB8lLY=";
  meta = {
    description = "Browse Loki logs without the need for writing complex queries";
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
