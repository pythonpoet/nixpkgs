{
<<<<<<< HEAD
  rke2Version = "1.33.6+rke2r1";
  rke2Commit = "2c2298232b55a94bd16b059f893c76a950811489";
  rke2TarballHash = "sha256-K58K5jqOtabjyG1MIfvnaMo4pePgWaAd9SQ5BCNo3nw=";
  rke2VendorHash = "sha256-taNWaULzVE3d4MhHvet3JFH3Mb4m/8no+DzIhqAjyVw=";
  k8sImageTag = "v1.33.6-rke2r1-build20251112";
  etcdVersion = "v3.5.21-k3s1-build20251017";
||||||| 213fed0310e3
  rke2Version = "1.33.5+rke2r1";
  rke2Commit = "d1092839cf08cb901b1d40461b0fa6e7ae6f8fc4";
  rke2TarballHash = "sha256-u+pSJXcQ2KGs9VNi/ikV7lOVgwOeLBjhS/U3zwHE8ok=";
  rke2VendorHash = "sha256-UouTBZUve+0dWzJU46rKGfo8BE/pYS/JSP9OsJnGGLM=";
  k8sImageTag = "v1.33.5-rke2r1-build20250910";
  etcdVersion = "v3.5.21-k3s1-build20250910";
=======
  rke2Version = "1.33.7+rke2r1";
  rke2Commit = "b0a4ec8463abd1e23e41f213fdb54ad8006c693b";
  rke2TarballHash = "sha256-Dkr+rDsC3L9LSGuu6hBLuyWqWJLrpEi/p35wzP7P0uw=";
  rke2VendorHash = "sha256-ybxWnzKjpH3sYeFIqUZyvV1KXB5zxpjMAzN6oC6MOXo=";
  k8sImageTag = "v1.33.7-rke2r1-build20251210";
  etcdVersion = "v3.5.25-k3s1-build20251210";
>>>>>>> master
  pauseVersion = "3.6";
<<<<<<< HEAD
  ccmVersion = "v1.33.6-0.20251010190850-d6b5244412d1-build20251017";
  dockerizedVersion = "v1.33.6-rke2r1";
||||||| 213fed0310e3
  ccmVersion = "v1.33.4-rc1.0.20250814212538-148243c49519-build20250908";
  dockerizedVersion = "v1.33.5-rke2r1";
=======
  ccmVersion = "v1.33.7-0.20251210094413-291666bcc1a4-build20251210";
  dockerizedVersion = "v1.33.7-rke2r1";
  helmJobVersion = "v0.9.12-build20251215";
>>>>>>> master
  imagesVersions = with builtins; fromJSON (readFile ./images-versions.json);
}
