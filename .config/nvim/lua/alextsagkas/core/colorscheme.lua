local status, color = pcall(require, "catppuccin")
if not status then
	print("Colorscheme is not found")
	return
end

color.setup({
	flavour = "mocha",
	term_colors = true,
	transparent_background = true,
})

vim.cmd.colorscheme("catppuccin")
