

profiles-test:
    nix run -Lv /home/gtrun/ghq/github.com/GTrunSec/vast2nix\#x86_64-linux.workflows.entrypoints.deploy \
    --override-input lock ./profiles/test -- --env-file=./profiles/test/deploy-nodes.env -t env

profiles-test-doc:
    nix run -Lv github:gtrunsec/vast2nix\#x86_64-linux.workflows.entrypoints.deploy \
    --override-input lock ./profiles/test -- doc
