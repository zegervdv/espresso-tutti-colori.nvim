local M = {}

M.config = {}

local function set_highlights(hlgroups)
  for group, colors in pairs(hlgroups) do
    if not vim.tbl_isempty(colors) then
      vim.api.nvim_set_hl(0, group, colors)
    end
  end
end

function M.setup(config)
  M.config = vim.tbl_extend('force', M.config, config or {})
end

function M.load()
  vim.cmd 'hi clear'
  if vim.fn.exists 'syntax_on' then
    vim.cmd 'syntax reset'
  end

  vim.g.colors_name = 'tutti-colori'

  local colors = require('tutti-colori.colors').setup(M.config)
  local hlgroups = require('tutti-colori.hlgroups').setup(colors)
  set_highlights(hlgroups)
end

return M
