return {
    "https://github.com/ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function ()
        local harpoon = require("harpoon")
        harpoon.setup()

        vim.keymap.set("n", "<leader>a", function () harpoon:list():add() end)
        vim.keymap.set("n", "<C-e>", function () harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<C-g>", function () harpoon:list():next() end)
        vim.keymap.set("n", "<C-b>", function () harpoon:list():prev() end)
    end
}
