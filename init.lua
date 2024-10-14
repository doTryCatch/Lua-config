-- init.lua

-- Set leader key

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
