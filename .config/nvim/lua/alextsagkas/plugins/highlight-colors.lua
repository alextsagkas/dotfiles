local status, hightlight = pcall(require, "nvim-highlight-colors")

if not status then
	print("nvim-colors-hightlight is not downloaded")
	return
end

vim.keymap.set("n", "<leader>hc", ":HighlightColorsToggle<CR>")

hightlight.setup({})
