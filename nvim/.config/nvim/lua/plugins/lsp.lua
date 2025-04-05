return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gopls = {
        settings = {
          gopls = {
            hoverKind = "FullDocumentation", -- Adjust hover settings if needed
          },
        },
      },
    },
  },
}
