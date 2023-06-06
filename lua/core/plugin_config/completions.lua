local cmp = require("cmp")

-- require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item()),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item()),
  }),
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources(
  {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'otter' }, -- Todo make this one work with sql
  },
  {
    { name = 'buffer' },
  }),
  experimental = {
    native_menu = false,
    ghost_text = true,
  },
})
