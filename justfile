url := "nix run -Lv github:gtrunsec/vast2nix/"
rev := "dd686a45ffca65350cabc3ff0be59baea16144eb"
# [ "x86-64-darwin" ]
system := "#x86_64-linux"
deploy := ".user.entrypoints.deploy --refresh --override-input lock"
config := ".user.entrypoints.config --refresh --override-input lock"

profiles-test-doc:
    {{url}}{{system}}{{deploy}} ./profiles/test -- doc

profiles-test arg:
    # just profiles-test '--env-file=./profiles/test/deploy.env -t all'
    {{url}}{{system}}{{deploy}} ./profiles/test -- {{arg}}

profiles-test-lock-example:
    {{url}}{{rev}}{{system}}{{deploy}} ./profiles/test doc


profiles arg1 arg2:
    {{url}}{{system}}{{deploy}} ./profiles/{{arg1}} -- {{arg2}}
