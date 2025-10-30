return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {

			runtime = {
				version = "LuaJIT",
			},

			diagnostics = {
				globals = { "vim" },
			},
			workspaces = {
				library = {
					vim.env.RUNTIME,
					vim.fn.stdpath("runtime") .. "/lua",
					vim.fn.stdpath("config") .. "/lua",
				},
				checkThirdParty = false,
			},
		},
	},
}
