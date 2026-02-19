return {
  'nvim-tree/nvim-tree.lua',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  cmd = { 'NvimTreeToggle', 'NvimTreeOpen', 'NvimTreeClose', 'NvimTreeFindFile' },
  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle file [E]xplorer' },
  },
  config = function()
    require('nvim-tree').setup {
      view = { width = 50 },
      update_focused_file = {
        enable = true,
        update_cwd = false,
        ignore_list = {},
      },
    }
  end,
}
