return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	config = function()
		local keymap = vim.keymap -- for conciseness

		require("bufferline").setup({
			options = {
				mode = "tabs",
				separator_style = "slope",
				diagnostics = "nvim_lsp",
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " 󰅙" or " "
					return " " .. count .. icon
				end,
				offsets = {
					{
						filetype = "NvimTree",
						text = "File Explorer",
						text_align = "center",
						separator = true,
					},
				},
				show_buffer_close_icons = false,
				diagnostics_update_in_insert = false,
			},
		})

		local opts = { noremap = true, silent = true }

		opts.desc = "Tab next"
		keymap.set("n", "ta", "<cmd>BufferLineCycleNext<CR>", opts) -- show definition, references

		opts.desc = "Tab prev"
		keymap.set("n", "tn", "<cmd>BufferLineCyclePrev<CR>", opts) -- show definition, references

		opts.desc = "close all tabs"
		keymap.set("n", "te", "<cmd>BufferLineCloseOthers<CR>", opts) -- show definition, references
	end,
}
