vim.g.hagen_colorscheme = "tokyonight"


function ColorMyPencils()
    vim.g.tokyonight_style = "storm"
    vim.g.tokyonight_transparent_sidebar = true

    vim.g.gruvbox_contrast_dark = 'hard'
    vim.g.gruvbox_invert_selection = '0'

    vim.opt.background = "dark"

    vim.cmd("colorscheme " .. vim.g.hagen_colorscheme)

    local hl = function(thing, opts)
        vim.api.nvim_set_hl(0, thing, opts)
    end

    hl("SignColumn", {
        bg = "none",
    })

    hl("CursorLineNR", {
        bg = "none",
    })

    --hl("ColorColumn", {
    --    ctermbg = 0,
    --    bg = '#202330'
    --})

    --hl("Normal", {
    --    bg = "none",
    --})

    if vim.g.hagen_colorscheme == "tokyonight" then

        hl("LineNr", {
            fg = "#5eacd3",
        })

        hl("netrwDir", {
            fg = "#5eacd3",
        })

    end

end

ColorMyPencils()
