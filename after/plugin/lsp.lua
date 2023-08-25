local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	"tsserver",
	"eslint",
  "cssls",
})

lsp.set_preferences({
	sign_icons = {}
})

lsp.on_attach(function (client, bufnr)
	local opts = {buffer = bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gh", function() vim.lsp.buf.hover() end, opts)
end)

require('lspconfig').tsserver.setup({
   root_dir = require('lspconfig.util').root_pattern('.git')
})

lsp.setup()

local cmp = require('cmp')
cmp.setup({
  preselect = 'item',
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
