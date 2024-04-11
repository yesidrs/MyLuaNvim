return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local nvchad_icons = {
			default = { left = "", right = " " },
			round = { left = "", right = "" },
			block = { left = "█", right = "█" },
			arrow = { left = "", right = "" },
		}

		require("lualine").setup({
			options = {
				component_separators = "",
				section_separators = { left = "󰽡", right = "󰽣" },
				-- section_separators = { left = "█" , right = "󰽣" },
			},
			sections = {
				lualine_c = { "" },
			},
		})
	end,
}
