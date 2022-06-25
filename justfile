

profiles-test:
    nix run -Lv /home/gtrun/ghq/github.com/GTrunSec/vast2nix\#x86_64-linux.workflows.entrypoints.deploy \
    --override-input lock ./profiles/test -- vast-deploy --env-file=./profiles/test/deploy-nodes.env -t env
