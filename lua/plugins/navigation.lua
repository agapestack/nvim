return {
	-- Telescope for fuzzy finding
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-n>"] = require("telescope.actions").move_selection_next,
							["<C-p>"] = require("telescope.actions").move_selection_previous,
						},
					},
				},
			})

			-- Telescope keymaps
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }
			map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
			map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
			map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
			map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
		end,
	},

	-- Nvim-tree for file exploration
	{
		"nvim-tree/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup()
			-- Nvim-tree keymap
			vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
		end,
	},

	-- Barbar for tab navigation
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		-- init = function()
		-- 	vim.g.barbar_auto_setup = false
		-- end,
		config = function()
			-- Barbar keymaps for buffer navigation
			local map = vim.api.nvim_set_keymap
			local opts = { noremap = true, silent = true }

			-- Move to previous/next buffer
			map("n", "<A-h>", "<Cmd>BufferPrevious<CR>", opts)
			map("n", "<A-l>", "<Cmd>BufferNext<CR>", opts)

			-- Goto buffer in position...
			map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
			map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
			map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
			map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
			map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
			map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
			map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
			map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
			map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
			map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

			-- Pin/unpin buffer
			-- map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

			-- Close buffer
			map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)

			-- Magic buffer-picking mode
			-- map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)

			-- Sort buffers automatically
			-- map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
			-- map('n', '<Space>bn', '<Cmd>BufferOrderByName<CR>', opts)
			-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
			-- map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
			-- map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
		end,
	},

	-- NERDTree for file navigation
	{
		"preservim/nerdtree",
		config = function()
			-- NERDTree keymap for toggling
			vim.api.nvim_set_keymap("n", "\\", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

			-- Focus NERDTree if it is open, else toggle it
			vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeFind<CR>", { noremap = true, silent = true })
		end,
	},
}
