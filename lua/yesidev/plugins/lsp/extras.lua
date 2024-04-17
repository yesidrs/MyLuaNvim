local dev_experience = {
	-- for go
	{
		"olexsmir/gopher.nvim",
		ft = "go",
		config = function()
			require("gopher").setup()
		end,
		build = function()
			vim.cmd([[silent! GoInstallDeps]])
		end,
		keys = {
			{ mode = "n", "<leader>gtj", "<cmd> GoTagAdd json <CR>", desc = "Add json struct tags" },
			{ mode = "n", "<leader>gty", "<cmd> GoTagAdd json <CR>", desc = "Add yaml struct tags" },
		},
	},
}

return dev_experience
