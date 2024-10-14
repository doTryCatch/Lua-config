-- lua/tree.lua

local status, nvim_tree = pcall(require, 'nvim-tree')

if not status then
  -- Display a custom error message if requiring the plugin fails
  vim.notify("Error loading nvim-tree: " .. nvim_tree, vim.log.levels.ERROR)
  return -- Exit if there's an error
end

nvim_tree.setup {
  auto_reload_on_write = true,
  sort_by = "name",
  view = {
    width = 30,
    side = 'left',
    adaptive_size = true,
  },
  filters = {
    dotfiles = false,
    custom = {},
  },
}

-- Keybindings
local function set_keymap(mode, keys, command, opts)
  opts = opts or { noremap = true, silent = true }
  vim.api.nvim_set_keymap(mode, keys, command, opts)
end

set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>') -- Toggle nvim-tree with Ctrl+n
