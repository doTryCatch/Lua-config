-- init.lua
vim.opt.sessionoptions:append({ "curdir", "globals", "tabpages", "winsize", "resize", "buffers" })

-- Close NvimTree before saving sessio0
vim.cmd([[
  command! Restart lua SaveAndRestart()
]])
-- Function to save session and restart
function SaveAndRestart()

-- Close NvimTree before saving session
    local ok, _ = pcall(vim.cmd, "NvimTreeClose")
    if not ok then
        print("NvimTree is not loaded, skipping close.")
end

    
    -- Save the session to a specific location
    local session_file = vim.fn.expand('~/.local/share/nvim/session.vim') -- You can change the path here
-- Save session (force overwrite)
    vim.cmd('mksession! ' .. session_file)                              -- Save session

    -- Call the restart shell script and exit Neovim
    os.execute("~/.config/nvim/restart_nvim.sh") -- Executes the shell script

    -- Exit Neovim
    vim.cmd('qa') -- Quit all windows and exit Neovim
end

vim.g.mapleader = " "
-- Ensure lazy.nvim is installed

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({

        "git",

        "clone",

        "--filter=blob:none",

        "https://github.com/folke/lazy.nvim.git",

        lazypath,

    })
end

-- Prepend lazy.nvim to runtime path

vim.opt.rtp:prepend(lazypath)

-- Load Basic Settings

require("setting")

require("plugins")

-- Load LSP and Completion first

require("core.lspconfig") -- Load LSP configurations

require("core.cmp")       -- Load completion settings

-- Load Treesitter

require("core.treeSitter") -- Load Treesitter settings

-- Load Interface Plugins
require("core.gitsigns")
require("core.mason")
require("core.git")
require("core.prettier")
require("core.savePrettierChange")
require("core.lspsaga")
require("core.colorizer")
require("core.bufferline")
require("core.auto-tag")   -- load auto tag setting
require("core.auto-pair")  -- load auto pair setting
require("core.colorTheme") -- Load color theme settings

require("core.lualine")    -- Load lualine settings

require("core.tree")       -- Load file explorer settings

require("core.telescope")  -- Load Telescope settings

-- Load Key Mappings

require("key_mapping") -- Load custom key mappings
