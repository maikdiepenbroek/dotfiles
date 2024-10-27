return {
  'nvim-treesitter/nvim-treesitter',
  event = 'BufReadPre',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'markdown', 'vim', 'vimdoc', 'typescript', 'javascript', 'tsx', 'prisma', 'graphql', 'gitignore' },

      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
