-- Project Type Loader
-- Loads the active project config based on vim.g.project_type
-- Set in config/project-type.lua

local project = vim.g.project_type or "wordpress"

local ok, config = pcall(require, "plugins.projects." .. project)
if not ok then
  vim.notify("Project config not found: " .. project .. ". Using wordpress as default.", vim.log.levels.WARN)
  config = require("plugins.projects.wordpress")
end

return config
