-- lua/plugins.lua
return {
    -- Color Scheme
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
    },
 -- Git Integration
    {
        "tpope/vim-fugitive",  -- Git plugin
    },

    -- File Explorer
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },  -- Optional icons
        config = function()
            require("nvim-tree").setup()
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {"nvim-lua/plenary.nvim"},
        config = function()
            require("config.telescope")
        end
    },
    {
        -- fzf-native for faster fuzzy finding, needs to be compiled
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make', -- Runs 'make' to compile the extension
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("config.which-key")
        end
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },  -- Opcional, para los íconos
        config = function()
            require("lualine").setup({
                options = {
                    theme = 'auto', -- Cambia este valor a tu esquema de colores preferido
                    section_separators = {'', ''},  -- Separadores decorativos
                    component_separators = {'', ''},
                    disabled_filetypes = {},  -- Desactiva Lualine en ciertos tipos de archivo si lo prefieres
                },
            })
        end,
}

}
