return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
		"windwp/nvim-ts-autotag",
	},
	config = function()
		-- Import nvim-treesitter plugin.
		local treesitter = require("nvim-treesitter.configs")

		-- Configure treesitter.
		treesitter.setup({
			-- Enable syntax highlighting.
			highlight = {
				enable = true,

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages.
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
			autotag = {
				enable = true,
			},
			ensure_installed = {
				"awk",
				"bash",
				"c",
				"cpp",
				"css",
				"dockerfile",
				"gitignore",
				"go",
				"html",
				"http",
				"java",
				"javascript",
				"json",
				"latex",
				"lua",
				"make",
				"markdown",
				"markdown_inline",
				"python",
				"regex",
				"rust",
				"sql",
				"toml",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
			-- Enable nvim-ts-context-commentstring plugin for commenting tsx and jsx.
			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},
		})
	end
}
