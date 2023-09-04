return {
	"lukas-reineke/indent-blankline.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.cmd([[ highlight IndentBlanklineContextChar guifg=#f38ba8 gui=nocombine]])

		vim.opt.list = true
		vim.opt.listchars:append("space:⋅")

		require("indent_blankline").setup({
			-- for example, context is off by default, use this to turn it on
			show_current_context = true,
			show_current_context_start = true,
			space_char_blankline = " ",
		})
	end,
}
