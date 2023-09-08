return {
	{
		"catppuccin/nvim",
		dependencies = {
			"ellisonleao/gruvbox.nvim",
		},
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
			})

			require("gruvbox").setup({
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					comments = true,
					operators = true,
					folds = true,
				},
				strikethrough = true,
				invert_selection = true,
				invert_signs = true,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})

			-- load the colorscheme here
			vim.cmd.colorscheme("gruvbox")
		end,
	},
}
