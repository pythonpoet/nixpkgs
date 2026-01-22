{
<<<<<<< HEAD
  rke2Version = "1.34.2+rke2r1";
  rke2Commit = "5e3fff8134a5269977762be64197d0cb9b26b48c";
  rke2TarballHash = "sha256-qd8oD51x2tiIRLWWA5rWUVp/stBB2ebe8dFIB5XuZME=";
  rke2VendorHash = "sha256-0qsCo/9kttOaFqOwfNfwxaG9z+EAdk15Dde3Gw5tK98=";
  k8sImageTag = "v1.34.2-rke2r1-build20251112";
  etcdVersion = "v3.6.5-k3s1-build20251017";
||||||| 213fed0310e3
  rke2Version = "1.34.1+rke2r1";
  rke2Commit = "98b87c78e2c5a09fd8ff07bcaf4f102db1894a93";
  rke2TarballHash = "sha256-dRmIDXeZabWxknqPod0RLZfT3I20llXELJhuQgDQHIc=";
  rke2VendorHash = "sha256-i8VS4NviyVxjTJpsO/sL9grYyUzy72Ql6m3qHbtnLnw=";
  k8sImageTag = "v1.34.1-rke2r1-build20250910";
  etcdVersion = "v3.6.4-k3s3-build20250908";
=======
  rke2Version = "1.34.3+rke2r1";
  rke2Commit = "1b103f296ab20fac6b32951c9efe59d28a5ed79f";
  rke2TarballHash = "sha256-94wB6Dt06/evdQcW1K8blNBHwNR3ZGCZPLJyeyMbYAM=";
  rke2VendorHash = "sha256-hVEIhaF5gabDKWX2VCTyKQa0cZktO9w+l2JtSNQIkg8=";
  k8sImageTag = "v1.34.3-rke2r1-build20251210";
  etcdVersion = "v3.6.6-k3s1-build20251210";
>>>>>>> master
  pauseVersion = "3.6";
<<<<<<< HEAD
  ccmVersion = "v1.34.2-0.20251010190833-cf0d35a732d1-build20251017";
  dockerizedVersion = "v1.34.2-rke2r1";
||||||| 213fed0310e3
  ccmVersion = "v1.33.0-rc1.0.20250905195603-857412ae5891-build20250908";
  dockerizedVersion = "v1.34.1-rke2r1";
=======
  ccmVersion = "v1.34.3-0.20251210094406-1ff6ebef7028-build20251210";
  dockerizedVersion = "v1.34.3-rke2r1";
  helmJobVersion = "v0.9.12-build20251215";
>>>>>>> master
  imagesVersions = with builtins; fromJSON (readFile ./images-versions.json);
}
