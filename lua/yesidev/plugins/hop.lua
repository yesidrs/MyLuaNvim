return {
	"phaazon/hop.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		-- import hop plugin
		local hop = require("hop")

		-- enable hop
		hop.setup()

		-- keybind options
		local opts = { noremap = true, silent = true }

		-- set keybinds
		opts.desc = "HopChar before cursor"
		vim.keymap.set("n", "K", "<cmd>HopChar2BC<CR>", opts)

		opts.desc = "HopChar after cursor"
		vim.keymap.set("n", "J", "<cmd>HopChar2AC<CR>", opts)

		opts.desc = "HopLine"
		vim.keymap.set("n", "H", "<cmd>HopChar1CurrentLineBC<CR>", opts)

		opts.desc = "HopCurrentLine"
		vim.keymap.set("n", "L", "<cmd>HopChar1CurrentLineAC<CR>", opts)
	end,
}
