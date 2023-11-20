return {
	"David-Kunz/gen.nvim",
	config = function()
		require("gen").prompts["DevOps me!"] = {
			prompt = "You Are a senior devops engineer, acting as an assistant. You offer help with cloud technologies like: Terraform, AWS, Kubernetes, Python, Azure DevOps yaml pipelines. You answer with code examples when possible. $input:\n$text",
			replace = true,
		}

		vim.keymap.set("v", "<leader>;", ":Gen<CR>")
		vim.keymap.set("n", "<leader>;", ":Gen<CR>")
	end,
}
