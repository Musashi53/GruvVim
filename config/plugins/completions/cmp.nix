{
  plugins = {
    cmp-emoji = { enable = true; };
    cmp-nvim-lsp = {enable = true;}; # lsp
    cmp-buffer = {enable = true;};
    cmp-path = {enable = true;};     # file system paths
    cmp_luasnip = {enable = true;};  # snippets
    cmp-cmdline = {enable = false;}; # autocomplete for cmdline

    cmp = {
      enable = true;
      settings = {
        autoEnableSources = true;
        experimental = {ghost_text = false;};
        
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        
        formatting = {fields = ["kind" "abbr" "menu"];};

        sources = [
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
          {name = "git";}
          {name = "nvim_lsp";}
          {name = "emoji";}
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
        ];

        window.__raw = ''
          {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          }
        '';

        mapping = {
          "<C-Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };
  };
}
