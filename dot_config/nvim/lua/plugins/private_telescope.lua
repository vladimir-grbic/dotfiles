return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		-- Install the following programs on your system:
		-- - "BurntSushi/ripgrep"
		-- - "sharkdp/fd"
	},
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.load_extension("fzf")

		-- Keymaps
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Lists files in cwd, respects .gitignore." })
		vim.keymap.set("n", "<leader>fg", builtin.git_files, { desc = "Fuzzy search through the output of git ls-files command, respects .gitignore." })
		vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Search for a string in cwd, respects .gitignore." })
		vim.keymap.set("n", "<leader>fc", builtin.grep_string, { desc = "Searches for the string under cursor or selection in cwd." })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Lists open buffers in current neovim instance." })
		vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Lists previously open files." })
	end,
}
