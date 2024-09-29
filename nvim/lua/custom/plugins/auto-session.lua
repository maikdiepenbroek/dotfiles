return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'
    auto_session.setup {
      auto_restore_enabled = false,
      auto_session_suppress_dirs = { '~/', '~/Downloads', '~/Desktop', '~/Documents' },
    }

    vim.keymap.set('n', '<leader>wR', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' })
    vim.keymap.set('n', '<leader>wS', '<cmd>SessionSave<CR>', { desc = 'Save session for auto session root dir' })
  end,
}
