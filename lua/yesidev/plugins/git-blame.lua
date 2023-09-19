return {
	"f-person/git-blame.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.cmd([[
     let g:gitblame_delay = 1000
     " let g:gitblame_display_virtual_text = 0
     " let g:gitblame_message_template = '<author> • <date>'
     let g:gitblame_date_format = '%r'
     ]])
	end,
}
