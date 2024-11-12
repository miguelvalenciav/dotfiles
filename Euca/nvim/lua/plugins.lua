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
    'nvim-tree/nvim-web-devicons',
    config = function()
        require('nvim-web-devicons').setup()
    end
    },
    {
    'norcalli/nvim-colorizer.lua',
    config = function()
        require('colorizer').setup()
    end
    },
    {
    'cosminadrianpopescu/vim-sql-workbench',
    ft = {"sql"},
    config = function()
        
    end
    
    },
    {
    "nvim-treesitter/nvim-treesitter",
    config = function()
          require('nvim-treesitter.configs').setup {
              ensure_installed = {"lua","json","python"},
              highlight = { enable = true }
          }
    end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons'},
        config = function()
        
        require('lualine').setup {
          options = {
            icons_enabled = true,
            theme = 'auto',
            component_separators = { left = '', right = ''},
            section_separators = { left = '', right = ''},
            disabled_filetypes = {
              statusline = {},
              winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            globalstatus = false,
            refresh = {
              statusline = 1000,
              tabline = 1000,
              winbar = 1000,
              }
            },
            sections = {
              lualine_a = {'mode'},
              lualine_b = {'branch', 'diff', 'diagnostics'},
              lualine_c = {'filename'},
              lualine_x = {'encoding', 'fileformat', 'filetype'},
              lualine_y = {'progress'},
              lualine_z = {'location'}
            },
            inactive_sections = {
              lualine_a = {},
              lualine_b = {},
              lualine_c = {'filename'},
              lualine_x = {'location'},
              lualine_y = {},
              lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
          }
        end
    },
}
