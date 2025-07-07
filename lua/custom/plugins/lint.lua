return {
  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPost', 'BufWritePost' },
    config = function()
      local lint = require 'lint'

      -- Register linters
      lint.linters_by_ft = {
        markdown = { 'markdownlint-cli2' },
      }
      vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufEnter', 'InsertLeave', 'TextChanged' }, {
        callback = function()
          require('lint').try_lint()
        end,
      })
    end,
  },
}
