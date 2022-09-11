local neogit = require("neogit")

neogit.setup {
  kind = "floating",
  commit_popup = {
    kind = "floating",
  },
  popup = {
    kind = "floating",
  },
}

vim.keymap.set('n', '<Leader>gc', function()
  neogit.open({"commit"})
  end
)
