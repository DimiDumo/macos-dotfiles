local actions = require("diffview.actions")
local neogit = require("neogit")

require("diffview").setup({
  keymaps = {
    file_panel = {
      ["q"] = function()
        vim.api.nvim_command('DiffviewClose')
      end,
      ["gf"]       = actions.goto_file_tab,
      ["cc"] =  function ()
        neogit.open({"commit"})
      end
    },
    file_history_panel = {
      ["q"] = function()
        vim.api.nvim_command('DiffviewClose')
      end
    }
  }
})

vim.keymap.set('n', '<Leader>gs', ':DiffviewOpen<CR>')
vim.keymap.set('n', '<Leader>gf', ':DiffviewFileHistory %<CR>')
