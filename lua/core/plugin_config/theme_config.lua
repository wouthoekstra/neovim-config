vim.o.termguicolors = true
-- vim.o.background = "light"
function ToggleBackground()
  if vim.o.background == "light" then
    vim.o.background = "dark"
  else
    vim.o.background = "light"
  end
end
-- vim.cmd [[ colorscheme gruvbox ]] -- Light color scheme

vim.cmd("command! ToggleDark lua ToggleBackground()")

require('onedark').setup {
    -- style = 'warmer'
    style = 'light'
}
require('onedark').load()
