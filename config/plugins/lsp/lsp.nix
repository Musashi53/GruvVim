{ pkgs, ...}:
{
  plugins = {
    lsp-lines.enable = true;
    lsp-format.enable = true;
    helm.enable = true;
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        html = {enable = true;};
        cssls = {enable = true;};
        angularls = {
	  enable = true;
	  package = null;
	};
        jdtls = {enable = true;};
        dockerls = {enable = true;};
        sqlls = {
	  enable = true;
	  package = null;
	};
        lua_ls = {enable = true;};
        nil_ls = {enable = true;};
        ts_ls = {enable = true;};
        clangd = {enable = true;};
        marksman = {enable = true;};
        jsonls = {enable = true;};
        helm_ls = {
          enable = true;
          extraOptions = {
            settings = {
              "helm_ls" = {
                yamlls = {
                  path = "${pkgs.yaml-language-server}/bin/yaml-language-server";
                };
              };
            };
          };
        };
        yamlls = {
          enable = true;
          extraOptions = {
            settings = {
              yaml = {
                schemas = {
                  kubernetes = "'*.yaml";
                  "http://json.schemastore.org/github-workflow" = ".github/workflows/*";
                  "http://json.schemastore.org/github-action" = ".github/action.{yml,yaml}";
                  "http://json.schemastore.org/ansible-stable-2.9" = "roles/tasks/*.{yml,yaml}";
                  "http://json.schemastore.org/kustomization" = "kustomization.{yml,yaml}";
                  "http://json.schemastore.org/ansible-playbook" = "*play*.{yml,yaml}";
                  "http://json.schemastore.org/chart" = "Chart.{yml,yaml}";
                  "https://json.schemastore.org/dependabot-v2" = ".github/dependabot.{yml,yaml}";
                  "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json" = "*docker-compose*.{yml,yaml}";
                  "https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json" = "*flow*.{yml,yaml}";
                };
              };
            };
          };
        };
      };
    };

  };
}
