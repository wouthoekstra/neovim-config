require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "volar",
    "lua_ls",
    "sqlls",
    "tsserver",
    "rust_analyzer",
  }
})

local on_attach = function(_, _)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" }
      }
    },
    workspace = {
      library = {
        [vim.fn.expand "$VIMRUNTIME/lua"] = true,
        [vim.fn.stdpath "config" .. "/lua"] = true,
      },
    },
  }
}

require("lspconfig").volar.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require("mason-null-ls").setup({
  ensure_installed = {
    'eslint_d',
  }
})

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lspconfig').sqlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lspconfig').rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "rustup", "run", "stable", "rust-analyzer",
  }
}
