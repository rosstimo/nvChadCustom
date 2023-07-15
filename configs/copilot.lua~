-- nvchad config for GitHub Copilot Neovim Extension
-- Load the GitHub Copilot plugin
-- require('copilot')

-- Disable GitHub Copilot for specific file types
--vim.cmd('autocmd FileType <filetype> CopilotDisable')
--vim.cmd('autocmd FileType markdown CopilotDisable')

-- Set GitHub Copilot as the default completion source
vim.o.completeopt = 'menuone,noselect'

-- GitHub Copilot settings
vim.g.copilot = {
  copilot_no_tab_map = true,
  enable_snippet_expansion = 1,
  enable_advanced_snippet_expansion = 1,
  enable_rust_path_semantics = 0,
  enable_csharp_path_semantics = 0,
  enable_typescript_path_semantics = 0,
  max_candidate_results = 5,
  max_snippet_results = 5,
  max_implementation_results = 5,
  enable_query_suggestions = 1,
  query_suggestion_delay = 500,
}

-- Key mappings for GitHub Copilot
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map('i', '<C-Space>', 'copilot#complete()', opts)
map('i', '<CR>', 'copilot#next()', opts)
map('i', '<C-e>', 'copilot#cancel()', opts)
map('i', '<C-j>', 'copilot#accept()', opts)
map('i', '<C-k>', 'copilot#cancel()', opts)
map('i', '<C-f>', 'copilot#fill()', opts)
map('i', '<C-c>', 'copilot#expand()', opts)
map('i', '<C-u>', 'copilot#unexpand()', opts)
map('i', '<C-g>', 'copilot#goto()', opts)

