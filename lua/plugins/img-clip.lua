return {
	"HakonHarnes/img-clip.nvim",
	event = "VeryLazy",
	opts = {},
	config = function()
        require("img-clip").setup({
            img_dir = function()
                -- Absoluten Pfad zur aktuellen Datei holen
                local current_file = vim.fn.expand("%:p")
                -- Verzeichnis der Datei extrahieren
                local current_dir = vim.fn.fnamemodify(current_file, ":h")
                -- Relativen Ordner "img" erstellen
                local img_folder = current_dir .. "/img"
                -- Verzeichnis sicherstellen
                vim.fn.mkdir(img_folder, "p")
                return img_folder
            end,
            img_name = function()
                -- Name des Bildes mit Zeitstempel
                return os.date("%Y-%m-%d_%H-%M-%S")
            end,
        })
    end,
	keys = {
		{ "<leader>img", "<cmd>PasteImage<cr>", desc = "Paste image from system clipboard" },
	},
}
