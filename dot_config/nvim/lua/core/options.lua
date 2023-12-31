local options = {
	backup = false,         -- Create a backup file.
	cursorline = true,      -- Highlight the current line.
	expandtab = false,      -- Convert tabs to spaces.
	fileencoding = "utf-8", -- Set the encoding written to a file.
	hlsearch = true,        -- Highlight all matches on previous search pattern.
	ignorecase = true,      -- Ignore case in search patterns.
	number = true,          -- Make lines numbered.
	relativenumber = true,  -- Make numbered lines relative.
	scrolloff = 10,         -- Minimal number of screen lines to be kept above and below the cursor.
	shiftwidth = 8,         -- The number of spaces inserted for each indentation.
	showmode = false,       -- Display the mode information in the statusline.
	showtabline = 2,        -- Always show tabs.
	signcolumn = "yes",     -- Populate the signcolumn with useful information/hints (eg. git, lsp, debugger).
	smartcase = true,       -- Improve the search for some patterns.
	smartindent = true,     -- Make indenting smarter again.
	tabstop = 8,            -- Number of spaces to be used per tab.
	termguicolors = true,   -- Enable 24-bit RGB color for true color terminals.
	textwidth = 80,         -- Maximum width of text per line.
	wrap = true,            -- Display lines as one long line.
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
