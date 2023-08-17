local opt = vim.opt
local g = vim.g
local autocmd = vim.api.nvim_create_autocmd



-------------------------------------- options ------------------------------------------
opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.smarttab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.colorcolumn = "90"
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.wrap = false

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"

-- use shellcheck to proivde linting for shell scripts
opt.makeprg = "shellcheck -f gcc -x"
autocmd("BufWritePost" , {
  pattern = "*",
  command = ":silent make | redraw!"
})
--open quick fix list if chelcheck found error

--au QuickFixCmdPost [^l]* nested cwindow
autocmd("QuickFixCmdPost",{
  pattern = "[^l]*",
  command = "nested cwindow"
})
--au QuickFixCmdPost    l* nested lwindow
autocmd("QuickFixCmdPost",{
  pattern = "l*",
  command = " nested lwindow",
})

g.mapleader = " "


-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})


