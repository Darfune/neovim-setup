local opt = vim.opt

-----------------------------------------------------------
-- General
-----------------------------------------------------------

-- Mouse settings
opt.mouse = 'a'

-- Clipboard
opt.clipboard = 'unnamedplus'

-----------------------------------------------------------
-- Tabs, indent
-----------------------------------------------------------

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.autoindent = true

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------

-- Line wrapping
opt.wrap = false

-- Line numbers
opt.relativenumber = true
opt.number = true


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

-- Theme
vim.cmd[[colorscheme dracula]]

-----------------------------------------------------------
-- Memory, CPU
-----------------------------------------------------------
opt.hidden = true           -- Enable background buffers
opt.history = 100           -- Remember N lines in history
opt.lazyredraw = true       -- Faster scrolling
opt.synmaxcol = 240         -- Max column for syntax highlight
opt.updatetime = 250        -- ms to wait for trigger an event

-----------------------------------------------------------
-- Autocomplete
-----------------------------------------------------------
opt.completeopt = 'menuone,noinsert,noselect'
