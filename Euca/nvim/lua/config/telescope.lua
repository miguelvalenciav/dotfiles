-- lua/config/telescope.lua

require('telescope').setup{
    defaults = {
        sorting_strategy = "ascending",
        path_display = {"smart"},
        layout_config = {
            prompt_position = "top",
            preview_cutoff = 120,
        },
        file_previewer = require('telescope.previewers').vim_buffer_cat.new,
        file_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
        mappings = {
            i = {
                ["<C-j>"] = require('telescope.actions').move_selection_next,
                ["<C-k>"] = require('telescope.actions').move_selection_previous,
                ["<C-q>"] = require('telescope.actions').send_selected_to_qflist
                            + require('telescope.actions').open_qflist,
                ["<Esc>"] = require('telescope.actions').close,
            }
        }
    },
    pickers = {
        find_files = {
            theme = "dropdown", -- Minimal dropdown theme for file search
            previewer = false, -- Disable preview for faster results
        },
        live_grep = {
            theme = "ivy", -- Ivy theme for searching within files
        },
    },
    extensions = {
        fzf = {
            fuzzy = true, -- Enable fuzzy search
            override_generic_sorter = true, -- Use fzf for better performance
            override_file_sorter = true,
        },
    }
}
-- Load the fzf extension
require('telescope').load_extension('fzf')
