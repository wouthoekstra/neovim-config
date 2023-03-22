local setup, null_ls = pcall(require, 'null-ls')

local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
    diagnostics.eslint_d,
  }
})
