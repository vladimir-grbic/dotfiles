return {
	"Lilja/zellij.nvim",
	opts = {
		options = {
			-- Keys with designated default values.
			path = "zellij", -- Zellij binary path.
			replaceVimWindowNavigationKeybinds = false, -- Sets keybinds like <C-w>h to left.
			vimTmuxNavigatorKeybinds = false, -- Sets keybinds like <C-h> to left.
			debug = false, -- Logs to /tmp/zellij.nvim.
		},
	},
	config = true,
}
