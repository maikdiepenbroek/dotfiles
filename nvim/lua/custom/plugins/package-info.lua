-- lua/plugins/package-info.lua
return {
  'vuki656/package-info.nvim',
  event = 'BufRead package.json', -- lazy-load only when a package.json is opened
  dependencies = { 'MunifTanjim/nui.nvim' },
  config = function()
    require('package-info').setup {
      autostart = true, -- automatically show the virtual text on open
      hide_up_to_date = true, -- keep the buffer clean when deps are already latest
      highlights = { -- tweak to taste
        up_to_date = { fg = '#6b7280' }, -- grey
        outdated = { fg = '#facc15' }, -- yellow
      },
      icons = {
        enable = true,
        style = {
          up_to_date = '',
          outdated = '',
        },
      },
    }

    -- Convenience key-maps (feel free to change <leader> prefix)
    local map = vim.keymap.set
    local pkg = require 'package-info'
    local opts = { silent = true, noremap = true, desc = 'package-info: ' }

    map('n', '<leader>ps', pkg.show, vim.tbl_extend('force', opts, { desc = opts.desc .. 'show lines' }))
    map('n', '<leader>ph', pkg.hide, vim.tbl_extend('force', opts, { desc = opts.desc .. 'hide lines' }))
    map('n', '<leader>pt', pkg.toggle, vim.tbl_extend('force', opts, { desc = opts.desc .. 'toggle lines' }))
    map('n', '<leader>pu', pkg.update, vim.tbl_extend('force', opts, { desc = opts.desc .. 'update dep' }))
    map('n', '<leader>pd', pkg.delete, vim.tbl_extend('force', opts, { desc = opts.desc .. 'delete dep' }))
    map('n', '<leader>pi', pkg.install, vim.tbl_extend('force', opts, { desc = opts.desc .. 'add dep' }))
  end,
}
