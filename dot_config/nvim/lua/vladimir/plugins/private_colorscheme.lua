return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = {
		options = {
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
		},
	},
	config = function()
		-- Note that the order of the following commands matters.
		vim.cmd.colorscheme("gruvbox")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})
	end,
}
