url := "nix run -Lv github:gtrunsec/vast2nix#"
dev := "nix run -Lv /home/gtrun/ghq/github.com/GTrunSec/vast2nix#"
# [ "x86-64-darwin" ]
system := "x86_64-linux"
deploy := ".user.entrypoints.deploy --refresh --override-input lock"
config := ".user.entrypoints.config --refresh --override-input lock"

dev-bundle:
     {{dev}}{{system}}{{deploy}} ./profiles/test -- --env-file=./profiles/test/deploy.env -t bundle

dev-doc:
     {{dev}}{{system}}{{deploy}} ./profiles/test -- doc

dev-config:
     {{dev}}{{system}}{{config}} ./profiles/test

profiles-test-doc:
    {{url}}{{system}}{{deploy}} ./profiles/test -- doc
