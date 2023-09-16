return {
	"nvim-neorg/neorg",
	build = ":Neorg sync-parsers",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.integrations.nvim-cmp"] = {},
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/neorg/notes",
							knowledge = "~/neorg/knowledge",
						},
						default_workspace = "notes",
					},
				},
			},
		})

		-- keybindings
		local keymap = vim.keymap
		local opts = { noremap = true, silent = true }

		opts.desc = "Show neorg keybindings"
		keymap.set("n", "<leader>o", "<cmd>Neorg keybind norg<CR>", opts) -- show definition, references
	end,
}
