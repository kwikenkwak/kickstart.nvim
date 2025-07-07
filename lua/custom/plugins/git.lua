return {
  {
    'NeogitOrg/neogit',
    -- Force this commit as there are more regressions lately
    commit = '446197d90d179d579fa9c6970d4f98d494a2090b',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      on_attach = function()
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', '<leader>b', gs.blame_line, { desc = 'Blame the current line' })
      end,
    },
  },
}
