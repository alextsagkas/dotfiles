-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	print("Mason is not downloaded")
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	print("Mason LSP configuration is not downloaded")
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	print("Mason null ls is not downloaded")
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"clangd",
		"tailwindcss",
		"lua_ls",
		"emmet_ls",
		"clangd",
		"eslint",
		"jsonls",
		"ltex",
		"marksman",
		"pylsp",
		"sqlls",
		"yamlls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"jq",
		"markdownlint",
		"autopep8",
		"clang_format",
		"gitlint",
		"prisma-language-server",
		"sql-formatter",
		"cpplint", -- c, c++ linter
		"yamllint",
		"yamlfmt",
		"emacs_vhdl_mode",
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
