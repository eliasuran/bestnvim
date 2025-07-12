local M = {}

M.install = "nvim-treesitter/nvim-treesitter"

M.config = function()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "javascript",
      "typescript",
      "python"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  })
end

return M
