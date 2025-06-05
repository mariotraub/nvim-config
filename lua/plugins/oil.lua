return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
	config = function()
        require("oil").setup({})
		vim.keymap.set("n", "<C-n>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end,
}
