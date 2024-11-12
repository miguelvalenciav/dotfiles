local wk = require("which-key")

wk.setup {
    -- Configuración de ventana y otras opciones
  --  win = {
    --    border = "rounded",
      --  position = "bottom",
    --},
}

-- Actualizar bindings al nuevo esquema recomendado
wk.add({
    {"<leader>f", group = "file"},
    {"<leader>ff", "<cmd> Telescope find_files<cr>", desc = "Find File", mode = "n"},
    {"<leader>fg", "<cmd> Telescope live_grep<cr>", desc = "Live Grep", mode = "n"},
    {"<leader>fb", "<cmd> Telescope buffers<cr>", desc = "Active Buffers", mode = "n"},
    {"<leader>fc", "<cmd> Telescope command_history<cr>", desc = "Command History", mode = "n"},
    {"<leader>fo", "<cmd> Telescope oldfiles<cr>", desc = "Recent Files", mode = "n"},
    {"<leader>fe", "<cmd> NvimTreeToggle<cr>", desc = "File Explorer", mode = "n"},
    {"<leader>fs", "<cmd> w<cr>", desc = "Save File"},


    --{"<leader>f", group = "buffer"},


})
