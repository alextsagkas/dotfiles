local setup, todocomments = pcall(require, "todo-comments")
if not setup then
	print("todo-comments not downloaded")
	return
end

vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>")
todocomments.setup()
