{
  description = "A very basic flake";

  outputs = {self, ...}: {
    deploy = {
      nodes.env = ./deploy-nodes.env;
      nodes.vast = ./vast.yaml;
      nodes.config = builtins.fromTOML (builtins.readFile ./config.toml);
    };
  };
}
