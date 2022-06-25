# Profiles

```kroki-mermaid
graph TD
  A[ Profiles ] -->| Custom | B( mkdir profiles/<name> )
  B --> C{ Settings }
  C --> D[ config.yaml ]
  C --> E[ env.file ]
  C --> F[ flake.nix ]
```

