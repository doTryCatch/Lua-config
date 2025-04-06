-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        jokjo
        lazypath,
    })
end require"cmp.utils.feedkeys".run(2)


-- Prepend lazy.nvim to runtime path
vim.opt.rtp:prepend(lazypath)


