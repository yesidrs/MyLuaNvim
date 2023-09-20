return {
	{
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = false,
		config = function()
			local function highlight_telescope(hl, c)
				local prompt = c.bg
				hl.TelescopeNormal = {
					bg = c.bg,
					fg = c.fg,
				}
				hl.TelescopeBorder = {
					bg = c.bg,
					fg = c.bg,
				}
				hl.TelescopePromptNormal = {
					bg = prompt,
				}
				hl.TelescopePromptBorder = {
					bg = prompt,
					fg = prompt,
				}
				hl.TelescopePromptTitle = {
					bg = c.bg_highlight,
					fg = c.fg,
				}
				hl.TelescopePreviewTitle = {
					bg = c.bg,
					fg = c.bg,
				}
				hl.TelescopeResultsTitle = {
					bg = c.bg,
					fg = c.bg,
				}
				hl.NoiceCmdlinePopupBorder = {
					bg = c.bg,
					fg = c.bg,
				}
			end

			require("tokyonight").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
				transparent = false, -- Enable this to disable setting the background color
				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = { italic = true },
					variables = { italic = false },
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
					floats = "dark", -- style for floating windows
				},
				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
				dim_inactive = false, -- dims inactive windows
				lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
				on_highlights = function(hl, c)
					highlight_telescope(hl, c)
				end,
			})

			-- load the colorscheme here
			-- vim.cmd.colorscheme("tokyonight")
		end,
	},
}
