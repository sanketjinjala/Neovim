return {
  "neovim/nvim-lspconfig",
  config = function()
    -- In your lspconfig setup file (e.g., lua/config/lsp/pylsp.lua or similar)

    require("lspconfig").pylsp.setup({
      settings = {
        pylsp = {
          plugins = {
            autopep8 = {
              enabled = false,
            },
            mccabe = {
              enabled = false,
            },
            pycodestyle = {
              enabled = false,
            },
            pyflakes = {
              enabled = false,
            },
            pylsp_black = {
              enabled = false,
            },
            pylsp_isort = {
              enabled = false,
            },
            pylsp_mypy = {
              enabled = false,
            },
            yapf = {
              enabled = false,
            },
          },
        },
      },
      -- other pylsp options like capabilities, on_attach, etc. go here if needed
    })
  end,
}

