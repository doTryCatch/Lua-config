local status, telescope = pcall(require, "telescope")
if not status then return end
local fb_actions = require("telescope").extensions.file_browser.actions
local actions = require('telescope.actions')


-- Setup Telescope
telescope.setup {
    defaults = {
        mappings = {
            n = {
                ['q'] = actions.close,              -- Close the Telescope window
                ['o'] = actions.select_default,     -- Open the selected file or folder
                ['u'] = fb_actions.goto_parent_dir, -- Go back to the previous dir
            },
            i = {
                ["<C-n>"] = actions.move_selection_next,
                ["<C-p>"] = actions.move_selection_previous,
                ["<C-c>"] = actions.close,
            },
        },
    },
    file_ignore_patterns = {},
    extensions = {
        file_browser = {
            theme = 'dropdown',
            hijack_netrw = true,
        }
    }
}
function FloatingSearchBox()
  local buf = vim.api.nvim_create_buf(false, true)

  local width = 30
  local height = 1
  local opts = {
    relative = "editor",
    width = width,
    height = height,
    row = 1,
    col = vim.o.columns - width-2,
    style = "minimal",
    border = "rounded",
  }

  local win = vim.api.nvim_open_win(buf, true, opts)
  vim.api.nvim_buf_set_option(buf, "buftype", "prompt")

  vim.fn.prompt_setprompt(buf, "Search: ")

  vim.fn.prompt_setcallback(buf, function(input)
    vim.api.nvim_win_close(win, true)
    if input and input ~= "" then
      vim.cmd("set hlsearch")
      vim.cmd("let @/ = '\\V" .. vim.fn.escape(input, '\\') .. "'") -- Escape special chars
      vim.cmd("normal! n")  
    end
  end)

  vim.cmd("startinsert")
end-- Map to <A-s> (Alt + s) for quick access
vim.api.nvim_set_keymap('n', 'fw', ':lua FloatingSearchBox()<CR>', { noremap = true, silent = true })
-- Load extensions
telescope.load_extension('file_browser')

-- Key mappings
--
local opts = { noremap = true, silent = true }
-- vim.api.nvim_set_keymap('n', 'fw', "<Cmd>lua require('flash').jump()<CR>", opts)
-- vim.api.nvim_set_keymap('n', 'fw', [[<Cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]],opts)
vim.api.nvim_set_keymap('n', '<A-f>', [[<Cmd>lua require('telescope.builtin').find_files()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-g>', [[<Cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-d>', [[<Cmd>lua require('telescope.builtin').diagnostics()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-h>', [[<Cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
vim.api.nvim_set_keymap('n', '<A-b>', [[<Cmd>lua require('telescope').extensions.file_browser.file_browser()<CR>]], opts)
