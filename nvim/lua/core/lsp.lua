vim.lsp.config("*", {
	root_markers = { ".git" },
})

vim.lsp.enable({
	-- Lua
	"lua_ls",
	"nil",
    "clangd",
})
