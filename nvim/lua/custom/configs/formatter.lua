local M = {
  filetype = {
    lua = {
      -- "formatter.filetypes.lua" defines default configurations for the
      -- "lua" filetype
      require("formatter.filetypes.lua").stylua,
    },

    cpp = {
      require("formatter.defaults").clangformat,
    },

    python = {
      require("formatter.filetypes.python").isort,
      require("formatter.filetypes.python").black,
    },

    go = {
      require("formatter.filetypes.go").goimports,
      require("formatter.filetypes.go").golines,
    },

    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace,
    },
  },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock",
})

return M
