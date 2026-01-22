{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  beautifulsoup4,
  extruct,
  isodate,
  language-tags,
  regex,
  requests,
  pytestCheckHook,
  responses,
  setuptools,
  nixosTests,
}:

buildPythonPackage (finalAttrs: {
  pname = "recipe-scrapers";
  version = "15.11.0";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "hhursev";
    repo = "recipe-scrapers";
    tag = finalAttrs.version;
    hash = "sha256-S0/RPVeEr/lAPJZSUwCippuXyirYnmaAuesWGYwg6kE=";
  };

  build-system = [ setuptools ];

  dependencies = [
    beautifulsoup4
    extruct
    isodate
    language-tags
    regex
  ];

  optional-dependencies = {
    online = [ requests ];
  };

  nativeCheckInputs = [
    pytestCheckHook
    responses
  ];

  disabledTests = [
    # Fixture is broken
    "test_instructions"
  ];

  pythonImportsCheck = [ "recipe_scrapers" ];

  passthru = {
    tests = {
      inherit (nixosTests) mealie tandoor-recipes;
    };
  };

  meta = {
    description = "Python package for scraping recipes data";
    homepage = "https://github.com/hhursev/recipe-scrapers";
<<<<<<< HEAD
    changelog = "https://github.com/hhursev/recipe-scrapers/releases/tag/${src.tag}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ambroisie ];
||||||| 213fed0310e3
    changelog = "https://github.com/hhursev/recipe-scrapers/releases/tag/${src.tag}";
    license = licenses.mit;
    maintainers = with maintainers; [ ambroisie ];
=======
    changelog = "https://github.com/hhursev/recipe-scrapers/releases/tag/${finalAttrs.version}";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ ambroisie ];
>>>>>>> master
  };
})
