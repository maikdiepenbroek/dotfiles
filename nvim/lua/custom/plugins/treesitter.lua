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

    -- nvim-treesitter's set-lang-from-info-string! crashes on nvim 0.12 due to
    -- a node API change in injection contexts. Re-register after nvim-treesitter
    -- has loaded so our pcall-wrapped version wins.
    vim.treesitter.query.add_directive('set-lang-from-info-string!', function(match, _, bufnr, pred, metadata)
      local node = match[pred[2]]
      if not node then
        return
      end
      local ok, text = pcall(vim.treesitter.get_node_text, node, bufnr)
      if ok and text then
        metadata['injection.language'] = text:lower()
      end
    end, { force = true, all = true })
  end,
}
