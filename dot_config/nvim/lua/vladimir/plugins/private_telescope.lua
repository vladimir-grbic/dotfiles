return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"BurntSushi/ripgrep",
		"sharkdp/fd",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		-- require("telescope").setup({
			-- defaults = {
				-- layout_strategy = "cursor",
				-- layout_config = {
				-- 	cursor = {
				-- 		prompt_position = "bottom",
				-- 		width = { padding = 0 },
				-- 		height = { padding = 0 },
				-- 		preview_width = 0.5,
				-- 	},
				-- },
				-- sorting_strategy = "ascending",
				-- borderchars = {
				-- 	{ '─', '│', '─', '│', '┌', '┐', '┘', '└'},
				-- 	prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
				-- 	results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
				-- 	preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
				-- },
				-- 		path_display = { "truncate " },
				-- 		mappings = {
				-- 			i = {
				-- 				-- Defaults for below are <C-n>, <C-p> and <C-c>.
				-- 				["<C-k>"] = require("telescope.actions").move_selection_previous, -- move to prev result
				-- 				["<C-j>"] = require("telescope.actions").move_selection_next, -- move to next result
				-- 				["<C-q>"] = require("telescope.actions").send_selected_to_qflist, -- quit
				-- 			},
				-- 		},
			-- },
		-- })

		-- Keymaps
		vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Fuzzy find files in cwd" })
		vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
	end,
}
