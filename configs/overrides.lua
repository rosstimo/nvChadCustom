local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier"
  },
}

-- git support in nvimtree
M.nvimtree = {
  hijack_unnamed_buffer_when_opening = true,

  update_focused_file = {
    enable = true,
    update_root = true,
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 10,
    preserve_window_proportions = true,
  },
  git = {
    enable = true,
  },

  renderer = {
    root_folder_label = true,
    highlight_git = true,
    highlight_opened_files = "none",

    indent_markers = {
      enable = false,
    },

    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },

      glyphs = {
        default = "~",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  -- view = {
  --   width = 30,
  -- },

}

M.cmp = {

  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' , keyword_length = 3 },
    { name = 'path' , keyword_length = 2},
    { name = 'look',
      keyword_length = 1,
      option = {
        convert_case = true,
        loud = true,
        dict = '/usr/share/dict/words'
      }
    },
  },
  completion = {
    autocomplete = false,
  },
}

return M
