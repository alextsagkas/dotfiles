local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	print("nvimtree is not downloaded")
	return
end

-- keymaps
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>rt", ":NvimTreeRefresh<CR>")

-- setup
nvimtree.setup({
	sort_by = "case_sensitive",
	view = {
		width = 40,
		hide_root_folder = false,
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
			},
		},
	},
	git = {
		enable = true,
		ignore = false,
		timeout = 500,
	},
	filters = {
		dotfiles = false,
		exclude = { "node_modules" },
	},
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = true,
		full_name = false,
		highlight_opened_files = "none",
		highlight_modified = "none",
		root_folder_label = ":~:s?$?/..?",
		indent_width = 2,

		indent_markers = {
			enable = true,
			inline_arrows = true,
			icons = {
				corner = "└",
				edge = "│",
				item = "│",
				bottom = "─",
				none = " ",
			},
		},

		icons = {
			webdev_colors = true,
			git_placement = "before",
			modified_placement = "after",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = false,
				git = true,
				modified = true,
			},

			glyphs = {
				default = "",
				symlink = "",
				bookmark = "",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},

				git = {
					unstaged = "✗",
					staged = "✓",
					unmerged = "",
					renamed = "➜",
					untracked = "★",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
})
