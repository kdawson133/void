return {
	{
    'https://github.com/VonHeikemen/lsp-zero.nvim',
    dependencies = {
      'https://github.com/williamboman/mason.nvim',
      'https://github.com/williamboman/mason-lspconfig.nvim',
      'https://github.com/neovim/nvim-lspconfig',
      'https://github.com/hrsh7th/cmp-nvim-lsp',
      'https://github.com/hrsh7th/nvim-cmp',
      'https://github.com/L3MON4D3/LuaSnip',
    },
    config = function()
      local lsp_zero = require('lsp-zero')

      lsp_zero.on_attach(function(client, bufnr)
      	lsp_zero.default_keymaps({buffer = bufnr})
      end)

      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- See https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
          -- "gopls", -- Go
          "lua_ls", -- Lua
          "pyright", -- Python
          "cssls", -- Css
          "html", -- Html
          "markdown_oxide", -- Markdown
          "emmet_language_server", -- Emmet
          -- "rust_analyzer", -- Rust
        },
        handlers = {
          lsp_zero.default_setup,
        },
      })
  end,
  },
}
