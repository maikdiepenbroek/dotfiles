return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'c',
        'html',
        'lua',
        'vim',
        'vimdoc',
        'typescript',
        'javascript',
        'tsx',
        'graphql',
        'gitignore',
        'yaml',
        'go',
        'gomod',
        'gosum',
        'gowork',
      },

      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
