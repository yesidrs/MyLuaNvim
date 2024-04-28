return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		event = { "BufWinEnter" },
		dependencies = {
			{ "nvim-telescope/telescope.nvim" },
		},
		opts = {
			-- See Configuration section for rest
			show_help = false,
		},
		keys = {
			-- Show help actions with telescope
			-- Quick chat with Copilot
			{
				"<leader>ccq",
				function()
					require("CopilotChat").ask("", { selection = require("CopilotChat.select").buffer })
				end,
				desc = "CopilotChat - Toggle",
			},
			-- Quick chat with Copilot using visual selection
			{
				"<leader>cc",
				function()
					local input = vim.fn.input("Quick Chat: ")
					if input ~= "" then
						require("CopilotChat").ask(input, { selection = require("CopilotChat.select").visual })
					end
				end,
				desc = "CopilotChat - Quick chat",
				mode = "v",
			},
			{
				"<leader>ccs",
				":CopilotChatSave ",
				desc = "CopilotChat - Save",
			},
			{
				"<leader>ccl",
				":CopilotChatLoad ",
				desc = "CopilotChat - Load",
			},
		},
	},
}
