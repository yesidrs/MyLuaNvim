return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		local webdevicons = require("nvim-web-devicons")

		webdevicons.setup({
			override = {
				ts = {
					icon = "",
					color = "#027bc0",
					name = "ts",
				},
				css = {
					icon = "",
					color = "#61afef",
					name = "css",
				},
				favicon = {
					icon = "",
					color = "#dcbf51",
					name = "favicon",
				},
				html = {
					icon = "",
					color = "#c5472a",
					name = "html",
				},
			},
			override_by_filename = {
				[".gitignore"] = {
					icon = "",
					color = "#c64520",
					name = "gitignore",
				},
				["angular.json"] = {
					icon = "",
					color = "#c63639",
					name = "angular.json",
				},
				["readme.md"] = {
					icon = "",
					color = "#3990d7",
					name = "readme",
				},
				["package.json"] = {
					icon = "",
					color = "#6e9e46",
					name = "package.json",
				},
				["tsconfig.json"] = {
					icon = "",
					color = "#2186c0",
					name = "tsconfig.json",
				},
				["tsconfig.app.json"] = {
					icon = "",
					color = "#2186c0",
					name = "tsconfig.json",
				},
				["tsconfig.spec.json"] = {
					icon = "",
					color = "#2186c0",
					name = "tsconfig.json",
				},
				["bun.lockb"] = {
					icon = "󰈡",
					color = "#dcd7cb",
					name = "bun.lockb",
				},
				["azure-pipelines.yml"] = {
					icon = "",
					color = "#2788de",
					name = "azure",
				},
				["azure-pipelines.yaml"] = {
					icon = "",
					color = "#2788de",
					name = "azure",
				},
			},
			override_by_extension = {
				["component.ts"] = {
					icon = "",
					color = "#027bc0",
					name = "angular",
				},
				["routes.ts"] = {
					icon = "󰑪",
					color = "#3a8f47",
					name = "routing",
				},
				["yml"] = {
					icon = "󰈙",
					color = "#e95a5f",
					name = "yml",
				},
				["yaml"] = {
					icon = "󰈙",
					color = "#e95a5f",
					name = "yaml",
				},
				["sql"] = {
					icon = "",
					color = "#e3b932",
					name = "database",
				},
				["json"] = {
					icon = "",
					color = "#e3b932",
					name = "json",
				},
			},
		})
	end,
}
