return {
  "nvim-telescope/telescope.nvim",
    requires = {
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-github.nvim" },
    config = function()
      require("telescope").load_extension('gh')({
        extensions = {
          ["pull_request"] = {
          require('telescope').extensions.gh.pull_request({}),
          },
        },
      })
    end,
    },
}

