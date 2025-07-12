local M = {}

function M.plugins()
  local plugins = {}
  local files = vim.fn.glob(vim.fn.stdpath("config") .. "/lua/plugins" .. "/*.lua", false, true)
  for _, file in ipairs(files) do
    local filename = vim.fn.fnamemodify(file, ":t:r")
    local _, plugin_config = pcall(require, "plugins." .. filename)
    table.insert(plugins, plugin_config.install)
  end
  return plugins
end

return M
