local gh = require("util").gh

vim.pack.add({
	{ src = gh("nvim-treesitter/nvim-treesitter") },
})

require("nvim-treesitter").setup({
	ensure_installed = {
		"bash",
		"c",
		"diff",
		"html",
		"javascript",
		"jsdoc",
		"json",
		"jsonc",
		"lua",
		"luadoc",
		"luap",
		"markdown",
		"markdown_inline",
		"printf",
		"python",
		"query",
		"regex",
		"toml",
		"tsx",
		"typescript",
		"vim",
		"vimdoc",
		"xml",
		"yaml",
		"go",
	},
	auto_install = true,
})
