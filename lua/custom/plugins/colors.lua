return {
  { 'ellisonleao/gruvbox.nvim' },
  { 'nyoom-engineering/nyoom.nvim' },
  { 'jacoborus/tender.vim' },
  { 'bluz71/vim-nightfly-colors' },
  { 'savq/melange-nvim' },
  { 'AlexvZyl/nordic.nvim' },
  { 'rmehri01/onenord.nvim' },
  { 'patstockwell/vim-monokai-tasty' },
  { 'luisiacc/gruvbox-baby' },
  { 'shatur/neovim-ayu' },
  { 'rebelot/kanagawa.nvim' },
  { 'EdenEast/nightfox.nvim' },
  { 'sainnhe/everforest' },
  { 'rose-pine/neovim' },
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      local possible_colorschemes = {
        'catppuccin-macchiato',
        'gruvbox-baby',
        'ayu-mirage',
        'catppuccin-mocha',
        'catppuccin-frappe',
        'catppuccin-macchiato',
        'catppuccin-latte',
        'kanagawa-dragon',
        'kanagawa-lotus',
        'kanagawa-wave',
        'melange',
        'minicyan',
        'nightfly',
        'nordic',
        'randomhue',
        'onenord-light',
        'onenord',
        'everforest',
      }
      math.randomseed(os.time())
      -- vim.cmd.colorscheme(possible_colorschemes[math.random(#possible_colorschemes)])
      vim.cmd.colorscheme 'nordic'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
