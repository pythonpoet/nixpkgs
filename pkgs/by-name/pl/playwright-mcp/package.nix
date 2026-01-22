{
  lib,
  buildNpmPackage,
  fetchFromGitHub,
  playwright-driver,
  playwright-test,
}:
buildNpmPackage rec {
  pname = "playwright-mcp";
<<<<<<< HEAD
  version = "0.0.41";
||||||| 213fed0310e3
  version = "0.0.34";
=======
  version = "0.0.56";
>>>>>>> master

  src = fetchFromGitHub {
    owner = "Microsoft";
    repo = "playwright-mcp";
    tag = "v${version}";
<<<<<<< HEAD
    hash = "sha256-OoTAYd1/hedR0k/3b83YOPaOviLWv1Y3pffNoeSf2g4=";
||||||| 213fed0310e3
    hash = "sha256-SGSzX41D9nOTsGiU16tRFXgarWgePRsNWIcEnNGH0lQ=";
=======
    hash = "sha256-kfn9vIxmx+dSYKzR5ayGX8RIWd5d8quTAyx4/dC6hIY=";
>>>>>>> master
  };

<<<<<<< HEAD
  npmDepsHash = "sha256-xgOPlCnlRXJZAZRM4xZ7SYSA5lsPglSewXxY19TbD/A=";
||||||| 213fed0310e3
  npmDepsHash = "sha256-+6HmuR1Z5cJkoZq/vsFq6wNsYpZeDS42wwmh3hEgJhM=";
=======
  npmDepsHash = "sha256-Qsln4llNpfXYXhSEfHnvdsFIF7adHKEyC1eGHtVY2Qk=";
>>>>>>> master

  postInstall = ''
    rm -r $out/lib/node_modules/@playwright/mcp/node_modules/playwright
    rm -r $out/lib/node_modules/@playwright/mcp/node_modules/playwright-core
    ln -s ${playwright-test}/lib/node_modules/playwright $out/lib/node_modules/@playwright/mcp/node_modules/playwright
    ln -s ${playwright-test}/lib/node_modules/playwright-core $out/lib/node_modules/@playwright/mcp/node_modules/playwright-core

    wrapProgram $out/bin/mcp-server-playwright \
      --set PLAYWRIGHT_BROWSERS_PATH ${playwright-driver.browsers} \
      --set-default PLAYWRIGHT_MCP_BROWSER chromium \
      --run 'if [ -z "$PLAYWRIGHT_MCP_USER_DATA_DIR" ]; then PLAYWRIGHT_MCP_USER_DATA_DIR="$(mktemp -d -t mcp-pw-XXXXXX)"; export PLAYWRIGHT_MCP_USER_DATA_DIR; trap "rm -rf \"$PLAYWRIGHT_MCP_USER_DATA_DIR\"" EXIT; fi'
  '';

  dontNpmBuild = true;

  passthru = {
    # Package and playwright driver versions are tightly coupled.
    skipBulkUpdate = true;
  };

  meta = {
    changelog = "https://github.com/Microsoft/playwright-mcp/releases/tag/v${version}";
    description = "Playwright MCP server";
    homepage = "https://github.com/Microsoft/playwright-mcp";
    license = lib.licenses.asl20;
    mainProgram = "mcp-server-playwright";
    maintainers = [ lib.maintainers.kalekseev ];
  };
}
