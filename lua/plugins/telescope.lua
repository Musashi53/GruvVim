return {
  {
    "nvim-telescope/telescope.nvim",
    branch = '0.1.x',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            -- even more opts
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
