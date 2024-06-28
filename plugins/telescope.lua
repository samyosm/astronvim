return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local telescope = require "telescope"
    telescope.setup {
      pickers = {
        live_grep = {
          file_ignore_patterns = { "node_modules", ".git", ".venv", ".next" },
          additional_args = function(_) return { "--hidden" } end,
        },
        find_files = {
          file_ignore_patterns = { "node_modules", ".git", ".venv", ".next" },
          hidden = true,
        },
      },
      extensions = {
        "fzf",
      },
    }
    telescope.load_extension "fzf"
  end,
}
