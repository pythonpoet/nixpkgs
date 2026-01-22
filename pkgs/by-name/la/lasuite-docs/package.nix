{
  stdenv,
  lib,
  python3,
  fetchFromGitHub,
  nixosTests,
  fetchYarnDeps,
  nodejs,
  yarnBuildHook,
  yarnConfigHook,
}:
let
  python = python3.override {
    self = python3;
    packageOverrides = self: super: {
<<<<<<< HEAD
      django = super.django_5_2;
||||||| 213fed0310e3
      django = super.django_5_2;
      django-csp = super.django-csp.overridePythonAttrs rec {
        version = "4.0";
        src = fetchPypi {
          inherit version;
          pname = "django_csp";
          hash = "sha256-snAQu3Ausgo9rTKReN8rYaK4LTOLcPvcE8OjvShxKDM=";
        };
      };
=======
      django = super.django_5;
>>>>>>> master
    };
  };

<<<<<<< HEAD
  version = "4.1.0";
||||||| 213fed0310e3
  version = "3.9.0";
=======
  version = "4.4.0";
>>>>>>> master
  src = fetchFromGitHub {
    owner = "suitenumerique";
    repo = "docs";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-vZkqHlZ1aDOXcrdyV8BXmI95AmMalXOuVLS9XWB/YxU=";
||||||| 213fed0310e3
    hash = "sha256-qlnDv2NYs6XCZDos/8CflyO/0GmYKd45/efDDNGGsic=";
=======
    hash = "sha256-Cm/Ch7dBKInQYPFGfSlSMLgj8uQR6E3S+6gCFUyvFSU=";
>>>>>>> master
  };

  mail-templates = stdenv.mkDerivation {
    name = "lasuite-docs-${version}-mjml";
    inherit src;

    sourceRoot = "source/src/mail";

    env.DOCS_DIR_MAILS = "${placeholder "out"}";

    offlineCache = fetchYarnDeps {
      yarnLock = "${src}/src/mail/yarn.lock";
<<<<<<< HEAD
      hash = "sha256-kwt4vSIiC8NNaKmygl2moV8ft02eB4ylPND4oe9tBUA=";
||||||| 213fed0310e3
      hash = "sha256-+kjU8eGk5CFh6/Z4G5G4XiaZ5OOBO5WB4d7lU7evXs0=";
=======
      hash = "sha256-g71OGg0PAo60h0bC+oOyvLvPOCg0pYXuYD8vsR5X9/k=";
>>>>>>> master
    };

    nativeBuildInputs = [
      nodejs
      yarnConfigHook
      yarnBuildHook
    ];

    dontInstall = true;
  };
in

python.pkgs.buildPythonApplication rec {
  pname = "lasuite-docs";
  pyproject = true;
  inherit version src;

  sourceRoot = "source/src/backend";

  patches = [
    # Support configuration throught environment variables for SECURE_*
    ./secure_settings.patch
    # Fix creation of unsafe C function in postgresql migrations
    ./postgresql_fix.patch
  ];

  build-system = with python.pkgs; [ setuptools ];

<<<<<<< HEAD
  dependencies =
    with python.pkgs;
    [
      beautifulsoup4
      boto3
      celery
      django
      django-configurations
      django-cors-headers
      django-countries
      django-csp
      django-extensions
      django-filter
      django-lasuite
      django-parler
      django-redis
      django-storages
      django-timezone-field
      django-treebeard
      djangorestframework
      drf-spectacular
      drf-spectacular-sidecar
      dockerflow
      easy-thumbnails
      factory-boy
      gunicorn
      jsonschema
      lxml
      markdown
      mozilla-django-oidc
      nested-multipart-parser
      openai
      psycopg
      pycrdt
      pyjwt
      pyopenssl
      python-magic
      redis
      requests
      sentry-sdk
      whitenoise
    ]
    ++ celery.optional-dependencies.redis
    ++ django-lasuite.optional-dependencies.all
    ++ django-storages.optional-dependencies.s3;
||||||| 213fed0310e3
  dependencies = with python.pkgs; [
    beautifulsoup4
    boto3
    celery
    django
    django-configurations
    django-cors-headers
    django-countries
    django-csp
    django-extensions
    django-filter
    django-lasuite
    django-parler
    django-redis
    django-storages
    django-timezone-field
    django-treebeard
    djangorestframework
    drf-spectacular
    drf-spectacular-sidecar
    dockerflow
    easy-thumbnails
    factory-boy
    gunicorn
    jsonschema
    lxml
    markdown
    mozilla-django-oidc
    nested-multipart-parser
    openai
    psycopg
    pycrdt
    pyjwt
    pyopenssl
    python-magic
    redis
    requests
    sentry-sdk
    whitenoise
  ];
=======
  dependencies =
    with python.pkgs;
    [
      beautifulsoup4
      boto3
      celery
      django
      django-configurations
      django-cors-headers
      django-countries
      django-csp
      django-extensions
      django-filter
      django-lasuite
      django-parler
      django-redis
      django-storages
      django-timezone-field
      django-treebeard
      djangorestframework
      drf-spectacular
      drf-spectacular-sidecar
      dockerflow
      easy-thumbnails
      factory-boy
      gunicorn
      jsonschema
      langfuse
      lxml
      markdown
      mozilla-django-oidc
      nested-multipart-parser
      openai
      psycopg
      pycrdt
      pyjwt
      pyopenssl
      python-magic
      redis
      requests
      sentry-sdk
      whitenoise
    ]
    ++ celery.optional-dependencies.redis
    ++ django-lasuite.optional-dependencies.all
    ++ django-storages.optional-dependencies.s3;
>>>>>>> master

  pythonRelaxDeps = true;

  postBuild = ''
    export DATA_DIR=$(pwd)/data
    ${python.pythonOnBuildForHost.interpreter} manage.py collectstatic --no-input --clear
  '';

  postInstall =
    let
      pythonPath = python.pkgs.makePythonPath dependencies;
    in
    ''
      mkdir -p $out/{bin,share}

      cp ./manage.py $out/bin/.manage.py
      cp -r data/static $out/share
      chmod +x $out/bin/.manage.py

      makeWrapper $out/bin/.manage.py $out/bin/docs \
        --prefix PYTHONPATH : "${pythonPath}"
      makeWrapper ${lib.getExe python.pkgs.celery} $out/bin/celery \
        --prefix PYTHONPATH : "${pythonPath}:$out/${python.sitePackages}"
      makeWrapper ${lib.getExe python.pkgs.gunicorn} $out/bin/gunicorn \
        --prefix PYTHONPATH : "${pythonPath}:$out/${python.sitePackages}"

      mkdir -p $out/${python.sitePackages}/core/templates
      ln -sv ${mail-templates}/ $out/${python.sitePackages}/core/templates/mail
    '';

  passthru.tests = {
    login-and-create-doc = nixosTests.lasuite-docs;
  };

  meta = {
    description = "Collaborative note taking, wiki and documentation platform that scales. Built with Django and React. Opensource alternative to Notion or Outline";
    homepage = "https://github.com/suitenumerique/docs";
    changelog = "https://github.com/suitenumerique/docs/blob/${src.tag}/CHANGELOG.md";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ soyouzpanda ];
    mainProgram = "docs";
    platforms = lib.platforms.all;
  };
}
