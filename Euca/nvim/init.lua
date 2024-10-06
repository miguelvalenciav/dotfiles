-- Set the runtime path to point to lazy.nvim
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup(require("plugins"))

-- Lua-native command style
vim.opt.number = true
vim.opt.hlsearch = true --To highlight search results
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.syntax = "on"
vim.opt.wrap = true
vim.opt.incsearch = true --Enables search as you type
vim.opt.list = true
vim.opt.relativenumber = true
vim.opt.wildmenu = true --This is the tab completion in command-line mode
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.cursorline = true

-- Commands in traditional vimscript sty;e
vim.cmd('colorscheme desert')
--vim.cmd('set foldmethod=indent')
--vim.cmd('NvimTreeToggle')

-- Key Bindings
vim.api.nvim_set_keymap('c', '<C-j>', [[wildmenumode() ? '<C-N>' : '<C-j>']], { expr = true, noremap = true })
vim.api.nvim_set_keymap('c', '<C-k>', [[wildmenumode() ? '<C-P>' : '<C-k>']], { expr = true, noremap = true })

vim.api.nvim_set_keymap('c', '<C-h>', [[wildmenumode() ? '<up>' : '<C-h>']], { expr = true, noremap = true })
vim.api.nvim_set_keymap('c', '<C-l>', [[wildmenumode() ? '<down>' : '<C-l>']], { expr = true, noremap = true })

--[[
-- Set up lazy.nvim with your plugins
require("lazy").setup({
    -- Your plugins go here
    {
        "lewis6991/gitsigns.nvim",  -- Git signs in the gutter and hunk management
        config = function()
            require("gitsigns").setup()
        end,
    },
    {
        "akinsho/git-conflict.nvim",  -- Git conflict resolution
        config = function()
            require('git-conflict').setup()
        end,
    },
})
]]
-- Comandos adicionales que es util correr desde que inicia nvim

