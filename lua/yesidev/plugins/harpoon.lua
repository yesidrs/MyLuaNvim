return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	config = function()
		local keymap = vim.keymap -- for conciseness
		local opts = { noremap = true, silent = true }

		opts.desc = "Toggle Harpoon"
		keymap.set("n", "<leader>s", require("harpoon.ui").toggle_quick_menu, opts)
		--
		opts.desc = "Harpoon add file"
		keymap.set("n", "<leader>ah", require("harpoon.mark").add_file, opts)
	end,
}
