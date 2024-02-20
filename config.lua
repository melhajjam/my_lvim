-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


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
