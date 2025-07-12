local M = {}

M.install = "williamboman/mason.nvim"

M.config = function()
  require("mason").setup()
end

return M
