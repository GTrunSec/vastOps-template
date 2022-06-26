url := "nix run -Lv github:gtrunsec/vast2nix#"
dev := "nix run -Lv /home/gtrun/ghq/github.com/GTrunSec/vast2nix#"
# [ "x86-64-darwin" ]
system := "x86_64-linux"
deploy := ".workflows.entrypoints.deploy --refresh --override-input lock"

dev-test:
     {{dev}}{{system}}{{deploy}} ./profiles/test -- --env-file=./profiles/test/deploy.env -t bundle

profiles-test-doc:
    {{url}}{{system}}{{deploy}} ./profiles/test -- doc
