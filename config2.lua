
lvim.plugins = {
    {
    "Diogo-ss/42-header.nvim",
    lazy = false,
    config = function()
      local header = require("42header")
      header.setup({
        default_map = true,            -- default Mapping <F1> in normal mode
        auto_update = true,            -- update header when saving
        user = "melhajja",             -- your user
        mail = "melhajja@student.1337.ma", -- your mail
      })
    end
    },
    {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      -- your optional config goes here, see below.
    end,
    },
    {
        "NStefan002/speedtyper.nvim",
        cmd = "Speedtyper",
        opts = {
        -- your config
        }
    },
    {
        'fedepujol/move.nvim',
        opts = {
        --- Config
        },
    },
    -- {
    --     "folke/todo-comments.nvim",  -- Added todo-tree.nvim plugin
    --     requires = "nvim-lua/plenary.nvim",
    --     config = function()
    --         require("todo-comments").setup({
    --             -- Your configuration options for todo-tree.nvim here
    --         })
    --     end
    -- },
}


local opts = { noremap = true, silent = true }
-- Normal-mode commands
vim.keymap.set('n', '<A-j>', ':MoveLine(1)<CR>', opts)
vim.keymap.set('n', '<A-k>', ':MoveLine(-1)<CR>', opts)
vim.keymap.set('n', '<A-h>', ':MoveHChar(-1)<CR>', opts)
vim.keymap.set('n', '<A-l>', ':MoveHChar(1)<CR>', opts)
vim.keymap.set('n', '<leader>wf', ':MoveWord(1)<CR>', opts)
vim.keymap.set('n', '<leader>wb', ':MoveWord(-1)<CR>', opts)

-- Visual-mode commands
vim.keymap.set('v', '<A-j>', ':MoveBlock(1)<CR>', opts)
vim.keymap.set('v', '<A-k>', ':MoveBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-h>', ':MoveHBlock(-1)<CR>', opts)
vim.keymap.set('v', '<A-l>', ':MoveHBlock(1)<CR>', opts)
--choose theme
lvim.colorscheme = "bluloco-dark"
-- lvim.colorscheme = "lunar"
-- lvim.keys.insert_mode["jj"] = "<Esc>"
-- lvim.keys.insert_mode["JJ"] = "<Esc>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
vim.opt.shiftwidth = 4  -- Number of spaces per indentation level
vim.opt.tabstop = 4     -- Number of spaces for a tab character
vim.opt.expandtab = true -- Tabs are expanded to spaces
-- Auto-save configuration
vim.cmd([[
  augroup autosave
    autocmd!
    autocmd InsertLeave,TextChanged * silent! update
  augroup END
]])

