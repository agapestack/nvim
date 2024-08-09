return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "frappe", -- Set the flavor here
			})
			-- Apply the colorscheme
			vim.cmd("colorscheme catppuccin")
		end,
	},

	-- Noice plugin for enhanced UI
	{
		"folke/noice.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				-- Configuration options for Noice
				cmdline = {
					enabled = true, -- Enable enhanced command line
					view = "cmdline", -- View for the command line
				},
				messages = {
					enabled = true, -- Enable message enhancements
				},
				popupmenu = {
					enabled = true, -- Enable popup menu enhancements
				},
				lsp = {
					progress = {
						enabled = true, -- Enable LSP progress
					},
					signature = {
						enabled = true, -- Enable signature help
					},
					hover = {
						enabled = true, -- Enable hover documentation
					},
					override = {
						-- Override markdown rendering so that **noice** can handle it
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				notify = {
					enabled = true, -- Use nvim-notify for notifications
				},
				-- More configuration options can be added here
			})
		end,
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
}
