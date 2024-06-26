return {
	"kdheepak/lazygit.nvim",
	-- optional for floating window border decoration
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = "BufWinEnter",
	config = function()
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Open lazygit" })
	end,
}
