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

		-- Set termguicolors to enable highlight groups.
		vim.opt.termguicolors = true

		-- Empty setup using defaults.
		require("nvim-tree").setup()

		-- Keymaps
		vim.keymap.set("n", "<leader>ee", vim.cmd.NvimTreeToggle, { desc = "Toggle file explorer" })
		vim.keymap.set("n", "<leader>ef", vim.cmd.NvimTreeFindFileToggle, { desc = "Toggle file explorer on current file" })
		vim.keymap.set("n", "<leader>ec", vim.cmd.NvimTreeCollapse, { desc = "Collapse file explorer" })
		vim.keymap.set("n", "<leader>er", vim.cmd.NvimTreeRefresh, { desc = "Refresh file explorer" })
	end,
}
