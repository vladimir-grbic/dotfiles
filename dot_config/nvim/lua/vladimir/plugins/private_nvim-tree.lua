return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- Disable netrw at the very start of your init.lua.
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		require("nvim-tree").setup({
			-- Turn on numbering in the file explorer.
			view = {
				relativenumber = true,
			},
			-- Disable window_picker for explorer to work well with window splits.
			actions = {
				open_file = {
					window_picker = {
						enable = false,
					},
				},
			},
			-- Turn on Git status indicators.
			git = {
				ignore = false,
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>te", vim.cmd.NvimTreeToggle, { desc = "Toggle file explorer" })
		vim.keymap.set("n", "<leader>tf", vim.cmd.NvimTreeFindFileToggle, { desc = "Toggle file explorer on current file" })
		vim.keymap.set("n", "<leader>tc", vim.cmd.NvimTreeCollapse, { desc = "Collapse file explorer" })
		vim.keymap.set("n", "<leader>tr", vim.cmd.NvimTreeRefresh, { desc = "Refresh file explorer" })
	end,
}
