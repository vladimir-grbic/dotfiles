local options = {
	backup = false,            -- creates a backup file
	cursorline = true,         -- highlight the current line
	expandtab = false,         -- convert tabs to spaces
	fileencoding = "utf-8",    -- the encoding written to a file
	hlsearch = true,           -- highlight all matches on previous search pattern
	ignorecase = true,         -- ignore case in search patterns
	number = true,             -- set numbered lines
	relativenumber = true,     -- set relative numbered lines
	scrolloff = 10,            -- minimal number of screen lines to keep above and below the cursor
	shiftwidth = 8,            -- the number of spaces inserted for each indentation
	showtabline = 2,           -- always show tabs
	signcolumn = "yes",        -- populates the signcolumn with something useful (eg. git, lsp, debugger)
	smartcase = true,          -- improves search for some patterns
	smartindent = true,        -- make indenting smarter again
	tabstop = 8,               -- number of spaces per tab
	termguicolors = true,      -- enables 24-bit RGB color for true color terminals
	textwidth = 80,            -- maximum width of text per line
	wrap = true,               -- display lines as one long line
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
