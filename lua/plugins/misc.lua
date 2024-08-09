return {
	-- Status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
		config = function()
			require("lualine").setup()
		end,
	},

	-- Git related signs
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},

	-- Git integration
	{ "tpope/vim-fugitive" },

	-- Commenting
	{ "tpope/vim-commentary" },

	-- ToggleTerm for terminal management
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = function()
			require("toggleterm").setup({
				size = 20,
				open_mapping = [[<leader>tt]],
				hide_numbers = true,
				shade_filetypes = {},
				shade_terminals = true,
				shading_factor = "2",
				start_in_insert = true,
				insert_mappings = true,
				terminal_mappings = true,
				persist_size = true,
				direction = "float", -- Use floating terminal
				close_on_exit = true, -- Close terminal when process exits
				float_opts = {
					border = "curved",
					winblend = 3,
				},
			})

			-- ToggleTerm keymap for floating terminal
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }
			map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)
		end,
	},

	-- Mini.nvim plugins
	{
		"echasnovski/mini.nvim",
		version = false,
		config = function()
			require("mini.comment").setup() -- For comments
			require("mini.surround").setup() -- For surrounding text
			require("mini.pairs").setup() -- For automatic pairing
			require("mini.cursorword").setup() -- For highlighting word under cursor
			require("mini.statusline").setup() -- For a minimal status line
			require("mini.tabline").setup() -- For a minimal tab line
			require("mini.trailspace").setup() -- For removing trailing spaces
			-- You can add more mini plugins here if needed
		end,
	},

	-- Which-key for displaying keymaps
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
