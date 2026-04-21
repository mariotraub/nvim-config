return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {"lua_ls"},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts={} },
			"neovim/nvim-lspconfig"
		},
		config = function ()
			vim.api.nvim_create_autocmd("LspAttach",{
				callback = function (e)
					local opts = {buffer = e.buf}
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
					vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
					vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
					vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, opts)
					vim.keymap.set("n", "<F3>", vim.lsp.buf.format, opts)
				end
			})
		end
	}
}
