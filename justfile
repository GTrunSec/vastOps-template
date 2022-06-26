url := "nix run -Lv github:gtrunsec/vast2nix/"
dev := "nix run -Lv /home/gtrun/ghq/github.com/GTrunSec/vast2nix"
rev := "dd686a45ffca65350cabc3ff0be59baea16144eb"
# [ "x86-64-darwin" ]
system := "#x86_64-linux"
deploy := ".user.entrypoints.deploy --refresh --override-input lock"
config := ".user.entrypoints.config --refresh --override-input lock"

dev-deploy arg:
     {{dev}}{{system}}{{deploy}} ./profiles/test -- --env-file=./profiles/test/deploy.env -t {{arg}}

dev-doc:
     {{dev}}{{system}}{{deploy}} ./profiles/test -- doc

dev-config:
     {{dev}}{{system}}{{config}} ./profiles/test

dev-lock:
     {{url}}{{rev}}{{system}}{{config}} ./profiles/test -- doc


profiles-test-doc:
    {{url}}{{system}}{{deploy}} ./profiles/test -- doc

profiles-test-all:
    {{url}}{{system}}{{deploy}} ./profiles/test -- all

profiles-test arg:
    # just profiles-test '--env-file=./profiles/test/deploy.env -t all'
    {{url}}{{system}}{{deploy}} ./profiles/test -- {{arg}}
