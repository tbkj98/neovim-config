local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Making space key the leader key
vim.g.mapleader = ","

-- Making the block cursor as default
vim.opt.guicursor = ""

-- Number lines config
vim.wo.number = true
vim.wo.relativenumber = true

-- Tab width config
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4 
vim.g.smarttab = true
vim.bo.expandtab = true

require("lazy").setup("plugins", opts)

-- Theme config
vim.cmd[[colorscheme tokyonight-storm]]


-- Telescopr key bindings config
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
