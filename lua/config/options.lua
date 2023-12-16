local opt = vim.opt
local g = vim.g

-----------------------------------------------------------
-- General
-----------------------------------------------------------

-- Show commands
opt.showcmd = true

-- Mouse settings
opt.mouse:append("a")

-- Clipboard
opt.clipboard:append("unnamedplus")

opt.iskeyword:append("-")

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = false
opt.autoindent = true
opt.smartindent = true

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------

-- Line settings
opt.wrap = false -- Line wrapping
opt.relativenumber = true -- Relative line numbers
opt.number = true -- Show line numbers
-- opt.colorcolumn = '100'
opt.signcolumn = "yes"

-- Search settings
opt.ignorecase = false
opt.smartcase = false

-- Cursor line
opt.cursorline = true

-- Folding
opt.foldmethod = 'marker'

-- Splitting
opt.splitright = true
opt.splitbelow = true

-- Colors
opt.termguicolors = true

opt.scrolloff = 10

-----------------------------------------------------------
-- Search
-----------------------------------------------------------

opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-----------------------------------------------------------
-- Autocomplete
-----------------------------------------------------------
opt.completeopt = 'menuone,noinsert,noselect'

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 250        -- ms to wait for trigger an event


-----------------------------------------------------------
-- Buffer Behaviour
-----------------------------------------------------------

opt.errorbells = false
opt.swapfile = false -- create swap file
opt.backup = false -- create backup
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.autochdir = false -- auto change directory
opt.modifiable = true -- Edit the curent buffer

