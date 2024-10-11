vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      view = { width = 50 },
      update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {},
      },
    }
  end,
}
