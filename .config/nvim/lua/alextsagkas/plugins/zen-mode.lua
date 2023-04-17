local setup, zenmode = pcall(require, "zen-mode")
if not setup then
	print("zen-mode not downloaded")
	return
end

vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>")

zenmode.setup()
