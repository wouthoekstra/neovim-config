require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "lua", "html", "php", "vim", "markdown", "vue" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  }
}