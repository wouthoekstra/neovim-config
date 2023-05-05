local setup, null_ls = pcall(require, 'null-ls')

local diagnostics = null_ls.builtins.diagnostics
local code_actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting

null_ls.setup({
  sources = {
    diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    code_actions.eslint_d,
    formatting.eslint_d,
  }
})
