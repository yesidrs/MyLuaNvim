return {
	"numToStr/Comment.nvim",
	event = { "BufReadPre", "BufNewFile" },
	lazy = false,
	config = function()
		require("Comment").setup()
	end,
}
