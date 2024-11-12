local colors = {
    bg = "#2E3B46", -- Cool Night
    fg = "#F5E6DA", -- Pale Sky
    red = "#e92d4d", -- Critical Red
    green = "#3D6B48", -- Eucalyptus Leaf
    yellow = "#F9E2AF", -- Warm Yellow
    blue = "#615FC8", -- Midnight Purple
    magenta = "#7C4A31", -- Deep Brown
    cyan = "#0F48DB", -- Deep Aqua
    gray = "#909090", -- Neutral Gray
    light_gray = "#D4C4B6", -- Dusty Stone
    dark_gray = "#525252", -- Steel
    highlight = "#B15638", -- Sunset Orange
}

vim.cmd("hi Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
vim.cmd("hi Comment guifg=" .. colors.gray)
vim.cmd("hi CursorLine guibg=" .. colors.dark_gray)
vim.cmd("hi LineNr guifg=" .. colors.light_gray)
vim.cmd("hi Pmenu guibg=" .. colors.light_gray .. " guifg=" .. colors.bg)
vim.cmd("hi StatusLine guibg=" .. colors.blue .. " guifg=" .. colors.fg)
vim.cmd("hi Visual guibg=" .. colors.highlight)

-- Adjust for plugins
vim.cmd("hi GitSignsAdd guifg=" .. colors.green)
vim.cmd("hi GitSignsChange guifg=" .. colors.yellow)
vim.cmd("hi GitSignsDelete guifg=" .. colors.red)

