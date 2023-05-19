local flags = require "better-vim.user.flags"
local lsps = require "better-vim.user.lsps"
local lualine = require "better-vim.user.lualine"
local mappings = require "better-vim.user.mappings"
local noice = require "better-vim.user.noice"
local nvim_tree = require "better-vim.user.nvim-tree"
local plugins = require "better-vim.user.plugins"
local theme = require "better-vim.user.theme"

return {
  flags = flags,
  lsps = lsps,
  lualine = lualine,
  mappings = mappings,
  noice = noice,
  nvim_tree = nvim_tree,
  plugins = plugins,
  theme = theme,
  hooks = {
    after_setup = function()
      -- Overrides
      require "better-vim.user.overrides"
      -- Plugins Setup
      require "better-vim.user.devicons"
      require "better-vim.user.spectre"
    end,
  }
}
