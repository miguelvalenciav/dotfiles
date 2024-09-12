vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")
vim.opt.number = true
vim.opt.cursorline = true
require("lazy").setup({
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
})

vim.cmd.colorscheme("catppuccin")
