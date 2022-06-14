local cmp = require 'cmp'
local lspkind = require 'lspkind'
local luasnip = require 'luasnip'
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")


cmp.setup {
	completion = { completeopt = 'menu,menuone,noselect' },
	
	snippet = {
		expand = function(args)
			--    luasnip.lsp_expand(args.body)
			--    vim.fn["UltiSnips#Anon"](args.body)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},
	formatting = {
		format = function(_, vim_item)
			vim_item.kind = lspkind.presets.default[vim_item.kind] .. ' ' .. vim_item.kind
			return vim_item
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = false }),
		["<Tab>"] = cmp.mapping(
			function(fallback)
				cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
			end,
			{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
		),
		["<S-Tab>"] = cmp.mapping(
			function(fallback)
				cmp_ultisnips_mappings.jump_backwards(fallback)
			end,
			{ "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
		),
	}),
	sources = {
		{ name = 'buffer' },
		{ name = 'nvim_lsp' },
		{ name = 'nvim_lua' },
		{ name = 'path' },
		{ name = 'spell' },
		-- { name = 'luasnip' },
		{ name = 'ultisnips' },
		{ name = 'vsnip' },
		{ name = 'copilot' },
		{ name = 'emoji' },
		{ name = 'calc' },
		{ name = 'nvim_lsp_signature_help' },
		{ name = 'dictionary',
			keyword_length = 2 }
	},
	experimental = {
		ghost_text = true
	}
}

cmp.setup.cmdline(':', {
	completion = { completeopt = 'noselect' },
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	}
	)
})
cmp.setup.cmdline('/', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp_document_symbol' }
	},
		{
		{ name = 'buffer' }
	})
})

