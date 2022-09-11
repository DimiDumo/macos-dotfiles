local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

-- local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["s"] = actions.select_vertical,
        ["t"] = actions.select_tab,
        ["v"] = actions.select_horizontal
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["n"] = {
          -- your custom normal mode mappings
          -- ["N"] = fb_actions.create,
          -- ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end,
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<Leader>f',
  function()
    builtin.oldfiles({
      no_ignore = false,
      hidden = true,
      sort_lastused = true
    })
  end)
vim.keymap.set('n', '<C-p>', function()
  builtin.live_grep()
end)
vim.keymap.set('n', '<Leader>b', function()
  builtin.buffers({
    initial_mode = "normal",
    sort_lastused = true
  })
end)
-- vim.keymap.set('n', ';t', function()
--   builtin.help_tags()
-- end)
-- vim.keymap.set('n', ';;', function()
--   builtin.resume()
-- end)
vim.keymap.set('n', '<Leader>e', function()
  builtin.diagnostics()
end)
vim.keymap.set("n", "<C-n>", function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    -- previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end)
