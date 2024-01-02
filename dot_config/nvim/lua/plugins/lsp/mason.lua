return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- Import mason.
		local mason = require("mason")

		-- Import mason-lspconfig.
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- Enable mason and configure icons.
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- List of servers for mason to install.
			ensure_installed = {
				"autotools-language-server", -- Make
				"awk_ls",
				"bashls",
				"clangd", -- C and C++
				"cssls",
				"dockerls",
				"golangci_lint_ls",
				"gopls",
				"html",
				"jdtls",
				-- "java_language_server", -- requires jlink binary
				"jsonls",
				"ltex",
				"lua_ls",
				"marksman",
				"pyright",
				"quick_lint_js", -- JavaScript
				"rust_analyzer",
				"sqlls",
				"taplo", -- TOML
				"tsserver", -- JavaScript and Typescript
				"vimls",
				"yamlls",
			},
			-- Auto-install configured servers (with lspconfig).
			automatic_installation = true, -- Not the same as ensure_installed.
		})

		-- mason_tool_installer.setup({
		-- 	ensure_installed = {
		-- 		"black",    -- Python formatter.
		-- 		"eslint_d", -- JS linter.
		-- 		"isort",    -- Python formatter.
		-- 		"prettier", -- Prettier formatter.
		-- 		"pylint",   -- Python linter.
		-- 		"stylua",   -- Lua formatter.
		-- 	},
		-- })
	end,
}
