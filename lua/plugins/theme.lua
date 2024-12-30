return {
	"neanias/everforest-nvim",
	name = "everforest",
	priority = 1000,
	config = function()
		local everforest = require("everforest")
		everforest.setup({
			background = "hard",
			diagnostic_text_highlight = true,
		})
		everforest.load({})
	end
}
