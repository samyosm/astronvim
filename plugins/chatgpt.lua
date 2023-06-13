return {
  "jackMort/ChatGPT.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim"
  },
  lazy = false,
  config = function()
    require("chatgpt").setup({
      api_key_cmd = "pass show openai/api_keys/chatgpt.nvim"
    })
  end,
}
