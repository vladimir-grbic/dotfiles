return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			theme = "gruvbox",
		},
	},
	config = function()
		local lualine = require("lualine")
    		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		lualine.setup({
			options = {
				icons_enabled = true,
				-- theme = "auto",
				theme = "gruvbox",
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_a = {
					"mode"
				},
				lualine_b = {
					"branch",
					"diff",
					"diagnostics",
				},
				lualine_c = {
					"filename",
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_y = {
					"progress"
				},
				lualine_z = {
					"location"
				},
			},
		})
	end
}
