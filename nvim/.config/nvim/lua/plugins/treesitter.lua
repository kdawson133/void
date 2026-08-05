return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  branch = "main",
  build =  ':TSUpdate',
  main = 'nvim-treesitter.config',
  opts = {
    ensure_installed = {
      'bash',
      'css',
      'dockerfile',
      'gitignore',
      'html',
      'javascript',
      'json',
      'lua',
      'markdown',
      'markdown_inline',
      'python',
      'scss',
      'toml',
      'typescript',
      'xml',
      'yaml',
      'zig',
      'zsh',
    },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
  },
}


