-- lua/plugins/package-info.lua
return {
  'vuki656/package-info.nvim',
  event = { 'BufReadPost package.json', 'BufNewFile package.json' },
  dependencies = { 'MunifTanjim/nui.nvim' },
  keys = {
    {
      '<leader>ps',
      function()
        require('package-info').show()
      end,
      desc = 'package-info: show lines',
    },
    {
      '<leader>ph',
      function()
        require('package-info').hide()
      end,
      desc = 'package-info: hide lines',
    },
    {
      '<leader>pt',
      function()
        require('package-info').toggle()
      end,
      desc = 'package-info: toggle lines',
    },
    {
      '<leader>pu',
      function()
        require('package-info').update()
      end,
      desc = 'package-info: update dep',
    },
    {
      '<leader>pd',
      function()
        require('package-info').delete()
      end,
      desc = 'package-info: delete dep',
    },
    {
      '<leader>pi',
      function()
        require('package-info').install()
      end,
      desc = 'package-info: add dep',
    },
  },
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
  end,
}
