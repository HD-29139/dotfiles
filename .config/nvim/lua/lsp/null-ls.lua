local null_ls = require("null-ls")
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
local formatting = null_ls.builtins.formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		--formatting binaries
		formatting.stylua, --lua
		formatting.clang_format, -- C/C++
		formatting.prettier, -- html
		formatting.npm_groovy_lint,

		-- linters / diagnostics binaries
		diagnostics.tidy, -- XML
	},
})
