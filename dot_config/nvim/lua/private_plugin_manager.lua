-- Bootstrap lazy.nvim plugin manager.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- Latest stable release.
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Add and configure plugins.
require("lazy").setup(
	{
		{import = "plugins"},
		{import = "plugins.lsp"},
	},
	{
		install = {
			colorscheme = { "gruvbox" },
		},
		checker = {
			-- Check for plugin updates but don't notify.
			-- Lualine will display notification updates.
			enabled = true,
			notify = false,
		},
		change_detection = {
			-- Don't notify when plugin config files are updated.
			notify = false,
		},
	}
)
