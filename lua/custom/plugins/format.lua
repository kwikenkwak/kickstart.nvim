return {
  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = true,
      fix_on_save = true,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      format_after_save = {
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        python = { 'isort', 'black' },
        markdown = { 'markdownlint-cli2' },
        javascript = { 'eslint_d' },
        javascriptreact = { 'eslint_d' },
        typescript = { 'eslint_d' },
        typescriptreact = { 'eslint_d' },
        graphql = { 'eslint_d' },
      },
    },
  },
}
