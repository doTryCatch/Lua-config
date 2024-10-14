-- this deals with parentheses, brackets, and braces, focusing on matching pairs of delimiters.
-- specially for bracket auto completion for different language
local status , autopairs = pcall(require,"nvim-autopairs")
if (not status) then return end
autopairs.setup{
    disable_filetype = {'TelescopePrompt', 'vim'}

}

