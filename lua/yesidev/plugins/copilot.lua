return {
	"zbirenbaum/copilot-cmp",
	dependencies = {
		"zbirenbaum/copilot.lua",
	},
	event = { "InsertEnter", "LspAttach" },
	fix_pairs = true,
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false },
			panel = { enabled = false },
			filetypes = {
				yaml = true,
				yml = true,
			},
		})

		require("copilot_cmp").setup()
	end,
}
