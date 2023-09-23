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

		vim.keymap.set("n", "<localleader>c", ":Neorg exec cursor<CR>", { silent = true }) -- just this block or blocks within heading section
		vim.keymap.set("n", "<localleader>cf", ":Neorg exec current-file<CR>", { silent = true }) -- whole file
		vim.keymap.set("n", "<localleader>cl", ":Neorg exec current-file<CR>", { silent = true }) -- whole file
	end,
}
