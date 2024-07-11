return {
	"nathom/filetype.nvim",
	config = function()
		require("filetype").setup({
			overrides = {
				extensions = {
					tf = "terraform",
					tfvars = "terraform",
					tfstate = "json",
					sh = "bash",
				},
				complex = {
					-- Set the filetype of any full filename matching the regex to gitconfig
					["Dockerfile.*"] = "dockerfile", -- Included in the plugin
				},
			},
		})
	end,
}
