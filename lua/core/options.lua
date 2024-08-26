
local set = vim.opt

-- General settings
set.encoding = utf8           -- Set encoding
set.number = true             -- Enable line numbers
set.relativenumber = true     -- Enable relative line numbers
set.tabstop = 4               -- Set tab width
set.shiftwidth = 4            -- Set indentation width
set.expandtab = true          -- Convert tabs to spaces
set.smartindent = true        -- Enable smart indentation
set.wrap = false              -- Disable line wrapping
set.termguicolors = true      -- Enable 24-bit RGB color support
set.cursorline = true         -- Highlight the current line
set.mouse = 'a'               -- Enable mouse support
set.clipboard = 'unnamedplus' -- Use system clipboard
set.splitright = true         -- Vertical splits open to the right
set.splitbelow = true         -- Horizontal splits open below
set.fileformat = "unix"
set.undofile = true           -- Save edit history
set.colorcolumn = "80"          -- Border line

-- Search settings
set.ignorecase = true         -- Ignore case in search patterns
set.smartcase = true          -- Override ignorecase if search pattern contains uppercase letters
set.hlsearch = true           -- Highlight search matches
set.incsearch = true          -- Incremental search

-- Splits
set.splitbelow = true
set.splitright = true

-- Memory and performance
set.hidden = true             -- Keep buffers hidden when they are abandoned
set.history = 1000            -- Command history limit
set.lazyredraw = true         -- Redraw only when needed
set.synmaxcol = 240           -- Maximum column for syntax highlighting
set.updatetime = 300          -- Faster completion (default is 4000ms)
set.swapfile = false          -- Disable swap if use SSD disk

-- Nvim-Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
set.termguicolors = true
set.termguicolors = true

-- Scroll
set.so = 30               -- Set cursor on center with scroll
set.virtualedit = 'onemore'

-- Fillchars
set.fillchars = {
    vert = '│',
    fold = '⠀',
    eob = ' ', -- suppress ~ at EndOfBuffer
    -- diff = '⣿', -- alternatives = ⣿ ░ ─ ╱
    msgsep = '‾',
    foldopen = '▾',
    foldsep = '│',
    foldclose = '▸'
}

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])
