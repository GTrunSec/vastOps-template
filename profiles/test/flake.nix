{
  description = "A very basic flake";

  outputs = { self, ... }: {
    deploy = {
      nodes.env = ./deploy-nodes.env;
      nodes.config = builtins.fromTOML (builtins.readFile ./config.toml);
    };
  };
}
