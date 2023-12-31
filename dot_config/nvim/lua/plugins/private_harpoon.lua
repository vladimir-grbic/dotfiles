return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = true,
	keys = {
		{ "<leader>hm", "<cmd>lua require('harpoon.mark').add_file()<cr>", desc = "Mark a file with harpoon." },
		{ "<leader>ha", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Show harpoon marks." },
		{ "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", desc = "Go to the next harpoon mark." },
		{ "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", desc = "Go to the previous harpoon mark." },
	},
}
