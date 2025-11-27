return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      -- ✅ Import the flake8 source correctly
      local flake8 = require("none-ls.diagnostics.flake8")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.black,
          flake8.with({
            diagnostics_format = "[flake8] #{m}",
          }),
        },
      })
    end,
  },
}
