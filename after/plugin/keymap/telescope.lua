local Remap = require("hagen.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

nnoremap("<C-p>", ":Telescope")

nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files()
end)

nnoremap("<leader>fg", function()
    require('telescope.builtin').live_grep()
end)

