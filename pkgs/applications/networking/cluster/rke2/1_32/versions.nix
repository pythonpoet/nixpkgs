{
<<<<<<< HEAD
  rke2Version = "1.32.10+rke2r1";
  rke2Commit = "7a87b5095b6e5c8e73bb1524082a5d644dd5e46b";
  rke2TarballHash = "sha256-GDh7n5xAkeqbE2RDzj905fAf+ip8EU2pcpPPjWKQ3AQ=";
  rke2VendorHash = "sha256-Hy10UPKyEU3enEitRchbLJILqzFa++7HlFkxth5pBag=";
  k8sImageTag = "v1.32.10-rke2r1-build20251112";
  etcdVersion = "v3.5.21-k3s1-build20251017";
||||||| 213fed0310e3
  rke2Version = "1.32.9+rke2r1";
  rke2Commit = "d00da43053c862ae59b91d94844c4addd5bd056f";
  rke2TarballHash = "sha256-rpSHXLM06IckB3Je6Nx+riVXjd4stU4KcO9Sid/rSK0=";
  rke2VendorHash = "sha256-MbDVrlv0FR8MKMpi3zjGx2PuAgvQzzwb/JBIWCVUcsI=";
  k8sImageTag = "v1.32.9-rke2r1-build20250910";
  etcdVersion = "v3.5.21-k3s1-build20250910";
=======
  rke2Version = "1.32.11+rke2r1";
  rke2Commit = "836ebdc75f3d96bbeed0373e1fee7de24d3798f7";
  rke2TarballHash = "sha256-AErhQfpUyINPLNaCeXxl67EehB8aKrQUDWZKrFlrG4E=";
  rke2VendorHash = "sha256-yiyMD4VPM592nwbKGEo380FX/B2NytKcw6ly2JSYx7E=";
  k8sImageTag = "v1.32.11-rke2r1-build20251216";
  etcdVersion = "v3.5.25-k3s1-build20251210";
>>>>>>> master
  pauseVersion = "3.6";
<<<<<<< HEAD
  ccmVersion = "v1.32.10-0.20251010190908-d439f1a03318-build20251017";
  dockerizedVersion = "v1.32.10-rke2r1";
||||||| 213fed0310e3
  ccmVersion = "v1.32.8-rc1.0.20250814215348-fe896f7e7cf8-build20250908";
  dockerizedVersion = "v1.32.9-rke2r1";
=======
  ccmVersion = "v1.32.11-0.20251210094421-ded016535487-build20251210";
  dockerizedVersion = "v1.32.11-rke2r1";
  helmJobVersion = "v0.9.12-build20251215";
>>>>>>> master
  imagesVersions = with builtins; fromJSON (readFile ./images-versions.json);
}
