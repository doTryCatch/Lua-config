local keymap=vim.keymap
keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
keymap.set('i', 'jk','<ESC>',{noremap=true,silent=true})
-- Increment/Decrement keymap
keymap.set('n','+','<C-A>',{noremap=true})
keymap.set('n','-','<C-X>',{noremap=true})
--select all keymap
keymap.set('n','<Space>a','ggVG') 
--copy key mapping 
keymap.set('v','c','y',{ noremap = true, silent = true }) -- copy only selected portion 
keymap.set('n','c','ggVGy',{ noremap = true, silent = true }) -- copy intire portion

-- Function to create a new tab with a user-defined name
local function CreateNamedTab()
    -- Prompt the user for a tab name
    local name = vim.fn.input("Enter tab name: ")
    
    -- Create a new tab
    vim.cmd('tabedit')               -- Create a new tab
    
    -- Set the tab name
    if name ~= "" then
        vim.cmd('file ' .. name)     -- Set the name (not a file, just a label)
    end
end

-- Key mapping to move from Nvim Tree to the opened file
keymap.set('n', '<A-c>', '<C-w>w', { noremap = true, silent = true }) -- Move to the opened file (Alt + l)
-- delete a word backwards 
keymap.set('n','dw','vb"_d')
 
-- Key mappings for tab management
keymap.set('n', 'te', CreateNamedTab, { noremap = true, silent = true })    -- Create a new tab with a name
keymap.set('n', 'tq', ':tabclose<CR>', { noremap = true, silent = true })    -- Close current tab
keymap.set('n', 'J', ':tabprevious<CR>', { noremap = true, silent = true }) -- Go to previous tab
keymap.set('n', 'K', ':tabnext<CR>', { noremap = true, silent = true })     -- Go to next tab
keymap.set('n', 'tt', ':tabs<CR>', { noremap = true, silent = true }) 
-- Key mappings for splitting windows
keymap.set('n', 'ss', ':split<CR>', { noremap = true, silent = true })  -- Horizontal split
keymap.set('n', 'sv', ':vsplit<CR>', { noremap = true, silent = true }) -- Vertical split
-- move window
keymap.set('','s<left>','<C-w>h') -- to switch on left window 
keymap.set('','s<right>','<C-w>l') -- to switch on right window 
keymap.set('','s<down>','<C-w>j') -- to switch on left window 
keymap.set('','s<up>','<C-w>k') -- to switch on left window eymamp.set('','s<left>','<C-w>h') -- to switch on left window
-- resize windowc
local keymap = vim.keymap

-- Enter resize mode
keymap.set('n', '<space>r', function()
  local opts = { noremap = true, silent = true, buffer = true }
  keymap.set('n', 'h', '<C-w><', opts)
  keymap.set('n', 'j', '<C-w>-', opts)
  keymap.set('n', 'k', '<C-w>+', opts)
  keymap.set('n', 'l', '<C-w>>', opts)

  -- Map <Esc> to exit resize mode by clearing the buffer-local mappings
  keymap.set('n', '<Esc>', function()
    keymap.del('n', 'h', { buffer = true })
    keymap.del('n', 'j', { buffer = true })
    keymap.del('n', 'k', { buffer = true })
    keymap.del('n', 'l', { buffer = true })
    keymap.del('n', '<Esc>', { buffer = true })
  end, opts)
end, { noremap = true, silent = true })

