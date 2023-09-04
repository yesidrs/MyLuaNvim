return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")

		-- recommended settings from nvim-tree documentation
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- change color for arrows in tree to light blue
		vim.cmd([[ highlight NvimTreeIndentMarker guifg=#b4befe ]])

		local function my_on_attach(bufnr)
			local api = require("nvim-tree.api")

			local function opts(desc)
				return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
			end

			-- default mappings
			api.config.mappings.default_on_attach(bufnr)

			-- Desactiva las teclas "e" y "a"
			vim.keymap.set("n", "e", "j", opts("down"))
			vim.keymap.set("n", "a", api.node.open.edit, opts("open folder"))
			vim.keymap.set("n", "n", api.node.navigate.parent_close, opts("close folder"))
			vim.keymap.set("n", "k", api.fs.rename_basename, opts("rename basename"))
			vim.keymap.set("n", "l", api.fs.create, opts("create"))
			vim.keymap.set("n", "v", api.node.open.vertical, opts("vertical split"))
			vim.keymap.set("n", "h", api.node.open.horizontal, opts("horizontal split"))
			vim.keymap.set("n", "o", api.node.open.preview, opts("preview"))
		end

		-- configure nvim-tree
		nvimtree.setup({
			on_attach = my_on_attach,
			view = {
				width = 35,
				number = true,
				relativenumber = true,
				side = "right",
			},
			-- change folder arrow icons
			renderer = {
				icons = {
					glyphs = {
						folder = {
							arrow_closed = "", -- arrow when folder is closed
							arrow_open = "", -- arrow when folder is open
						},
						git = {
							unstaged = "M",
							staged = "A",
							unmerged = "",
							renamed = "➜",
							untracked = "●",
							deleted = "D",
							ignored = "◌",
						},
					},
				},
			},
			-- disable window_picker for
			-- explorer to work well with
			-- window splits
			actions = {
				open_file = {
					quit_on_open = true,
					window_picker = {
						enable = false,
					},
				},
			},
			filters = {
				custom = { ".DS_Store" },
			},
			git = {
				ignore = false,
			},
		})

		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		-- keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
		keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer on current file
	end,
}
