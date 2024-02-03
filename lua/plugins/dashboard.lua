return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
	-- Config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
