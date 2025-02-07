return {
	{
		"dundalek/lazy-lsp.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(_, bufnr)
				lsp_zero.default_keymaps({
					buffer = bufnr,
					preserve_mappings = false
				})

				local opts = { buffer = bufnr, noremap = true, silent = true }
				vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
			end)

			require("lazy-lsp").setup({
				excluded_servers = {
					"ccls",                            -- prefer clangd
					"denols",                          -- prefer eslint and ts_ls
					"flow",                            -- prefer eslint and ts_ls
					"ltex",                            -- grammar tool using too much CPU
					"quick_lint_js",                   -- prefer eslint and ts_ls
					"scry",                            -- archived on Jun 1, 2023
					"tailwindcss",                     -- associates with too many filetypes
					"biome",                           -- not mature enough to be default
					"pylyzer"                          -- does not work correctly
				},
			})

			vim.api.nvim_create_autocmd("CursorHold", {
				pattern = "*",
				callback = function()
					local diagnostics = vim.diagnostic.get(0, { lnum = vim.api.nvim_win_get_cursor(0)[1] - 1 })
					if #diagnostics > 0 then
						vim.diagnostic.open_float()
					end
				end
			})
		end
	},
}
