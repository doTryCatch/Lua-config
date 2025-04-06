-- Set global variables
vim.g.mapleader = " "        -- Set space as the leader key
vim.g.loaded_netrw = 1       -- Disable netrw plugin
vim.g.loaded_netrwPlugin = 1 -- Disable netrw plugin

-- Set options
vim.o.signcolumn = 'yes'        -- Always show the sign column (solves the flickering issue )

vim.o.number = true             -- Show line numbers
vim.o.relativenumber = true     -- Show relative line numbers
vim.o.expandtab = true          -- Convert tabs to spaces
vim.o.tabstop = 4               -- Number of spaces a tab counts for
vim.o.shiftwidth = 4            -- Size of an auto-indent
vim.o.hlsearch = true           -- Highlight search results
vim.o.ignorecase = true         -- Ignore case when searching
vim.o.smartcase = true          -- Override ignorecase if the search pattern contains uppercase characters
vim.o.mouse = "a"               -- Enable mouse support
vim.o.clipboard = "unnamedplus" -- Use system clipboard

vim.opt.termguicolors = true
vim.opt.fillchars:append("eob: ") --This replaces the ~ on empty lines (end of buffer) with blank spaces, effectively hiding them. eob stand for end of line

-- service off for swap file creation which helps to prevent update loss as backup file
--vim.opt.swapfile = false

-- Customizing colors for web development-related files
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "css", "javascript", "typescript", "jsx", "tsx" },
    callback = function()
        vim.cmd("highlight TSFunction guifg=#ff79c6 gui=bold")       -- Bright pink for functions
        vim.cmd("highlight TSKeyword guifg=#bd93f9 gui=italic")      -- Purple for keywords
        vim.cmd("highlight TSString guifg=#f1fa8c gui=italic")       -- Yellow for strings
        vim.cmd("highlight TSTag guifg=#8be9fd gui=bold")            -- Cyan for tags
        vim.cmd("highlight TSTagAttribute guifg=#50fa7b gui=italic") -- Green for attributes
    end,
})
-- auto save on content change
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {

    pattern = "*",

    callback = function()
        vim.cmd("silent! write")
    end,
})
