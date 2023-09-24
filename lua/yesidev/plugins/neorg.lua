return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"laher/neorg-exec",
	},
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.integrations.nvim-cmp"] = {},
				["core.summary"] = {},
				["external.exec"] = {},
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/neorg/notes",
							knowledge = "~/neorg/knowledge",
							work = "~/neorg/work",
						},
					},
				},
			},
		})

		local opts = { noremap = true, silent = true }

		opts.desc = "Exec current code"
		vim.keymap.set("n", "<localleader>cc", ":Neorg exec cursor<CR>", opts) -- just this block or blocks within heading section

		opts.desc = "Exec all code blocks"
		vim.keymap.set("n", "<localleader>cf", ":Neorg exec current-file<CR>", opts) -- whole file

		opts.desc = "Clear results"
		vim.keymap.set("n", "<localleader>cl", ":Neorg exec clear<CR>", opts) -- whole file
	end,
}
