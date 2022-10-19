local options = {
  number = true, -- set numbered lines
  relativenumber = true,-- set relative numbered lines
  wrap = false, -- display lines as one long line
  linebreak = false, -- companion to wrap, don't split words

  cursorline = true, -- highlight the current line
  scrolloff = 8, -- minimal number of screen lines to keep above and below the cursoer
  sidescrolloff = 8, -- minimal number of screen columns either side of cursor if wrap is `false`
  signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
  colorcolumn = "110", -- highlight this screen column

  tabstop = 2, -- insert 2 spaces for a tab
  shiftwidth = 2, -- the number of spaces inserted for each indentation
  expandtab = true, -- convert tabs to spaces
  smartindent = true, -- do smart autoindenting when starting a new line

  backup = false, -- creates a backup file
  swapfile = false, -- creates a swap file
  undodir = os.getenv("HOME") .. "/.vim/undodir", -- directory for undo files
  undofile = true, -- creates a undo file

  cmdheight = 2, -- more space in the neovim command line for displaying messages
  updatetime = 50, -- faster completion
  termguicolors = true, -- set term gui colors (most terminals support this)
  clipboard = "unnamedplus", -- allows neovim to access the system clipboard
  fileencoding = "utf-8", -- the encoding written to a file

  hlsearch = false, -- highlight all matches on previous search pattern
  ignorecase = true, -- ignore case in search patterns
  incsearch = true, -- highlight all matches while typing search pattern

  splitbelow = true, -- force all horizontal splits to go below current window
  splitright = true, -- force all vertical splits to go to the right of current window
}

vim.opt.shortmess:append("c")
vim.opt.isfname:append("@-@")

for k, v in pairs(options) do
  vim.opt[k] = v
end

