return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
    lazy = false,
		dependencies = {
			{ "nvim-telescope/telescope.nvim" },
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			-- See Configuration section for rest
		},
		keys = {
			-- Show help actions with telescope
			-- Quick chat with Copilot
			{
				"<leader>ccq",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
					end
				end,
				desc = "CopilotChat - Quick chat",
			},
			-- Quick chat with Copilot using visual selection
			{
				"<leader>ccv",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
					end
				end,
				desc = "CopilotChat - Quick chat",
        mode = "v",
			},
		},
		-- See Commands section for default commands if you want to lazy load on them

		-- vim.keymap.set(
		-- 	"n",
		-- 	"<leader>ccq",
		-- 	"<cmd>lua require('CopilotChat').ask(vim.fn.input('Quick Chat: '), { selection = require('CopilotChat.select').buffer })<cr>",
		-- 	{ noremap = true, silent = true, desc = "CopilotChat - Quick chat" }
		-- ),
		--
		-- vim.keymap.set(
		-- 	"v",
		-- 	"<leader>ccv",
		-- 	"<cmd>lua require('CopilotChat').ask(vim.fn.input('Quick Chat: '), { selection = require('CopilotChat.select').visual })<cr>",
		-- 	{ noremap = true, silent = true, desc = "CopilotChat - Quick chat" }
		-- ),
	},
}
