local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	print("Telescope is not downloaded")
	return
end

local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	print("Telescope actions are not downloaded")
	return
end

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous, -- move to prev result
				["<C-j>"] = actions.move_selection_next, -- move to next result
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- send selected to quickfixlist
			},
		},
	},
})

local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
	print("Builtin is not downloaded")
end

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<leader>ft", function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set("n", "<leader>fc", function()
	require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
		winblend = 10,
		previewer = false,
	}))
end, { desc = "[/] Fuzzily search in current buffer" })

telescope.load_extension("fzf")
