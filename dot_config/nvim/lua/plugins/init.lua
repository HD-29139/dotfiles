plugins = {
	"nvim-lua/plenary.nvim",
	"kyazdani42/nvim-web-devicons",
	"nvim-neotest/nvim-nio",
	"hiphish/rainbow-delimiters.nvim",
	"JoosepAlviste/nvim-ts-context-commentstring",
	"nvimtools/none-ls.nvim",
	"rafamadriz/friendly-snippets",
	"projekt0n/github-nvim-theme",
	"folke/tokyonight.nvim",
	"savq/melange-nvim",
	"ellisonleao/gruvbox.nvim",
	"rebelot/kanagawa.nvim",
	"S-Spektrum-M/odyssey.nvim",

	require("plugins.snacks"),
	require("plugins.indentline"),
	require("plugins.lualine"),
	require("plugins.bufferline"),
	require("plugins.treesitter"),
	require("plugins.comment"),
	require("plugins.notify"),
	require("plugins.telescope"),
	require("plugins.autopairs"),
	require("plugins.project"),
	require("plugins.toggleterm"),
	require("plugins.yazi"),
	require("plugins.kulala"),

	-- Found no better way of doing that
	require("plugins.dap").dap,
	require("plugins.dap").dapui,
	require("plugins.dap").dap_python,

	require("plugins.git"),
	require("plugins.autosession"),
	require("plugins.null-ls"),
	require("plugins.mason"),
	require("plugins.cmp"),
	require("plugins.lspcfg"),

	require("plugins.rustacean"),
	{
		"tiagovla/scope.nvim",
		config = function()
			vim.opt.sessionoptions = {
				"buffers",
				"tabpages",
				"globals",
			}
			require("scope").setup()
		end,
	},
	{
		"famiu/bufdelete.nvim",
		event = "VeryLazy",
		lazy = true,
		keys = {
			{ "<C-A-d>", "<cmd>Bdelete!<CR>" },
		},
	},
	{
		"uga-rosa/ccc.nvim",
		config = function()
			require("ccc").setup({
				highlighter = {
					auto_enable = true,
					lsp = true,
				},
			})
		end,
	},
	{
		"OXY2DEV/markview.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1000,
		config = true,
	},
	{
		"mfussenegger/nvim-jdtls",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
		build = "make install_jsregexp",
	},
}
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins, opts)

-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true},
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,         -- do not set background color
    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {}
    end,
    theme = "dragon",              -- Load "wave" theme
    background = {               -- map the value of 'background' option to a theme
        dark = "dragon",           -- try "dragon" !
        light = "lotus"
    },
})

require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")
