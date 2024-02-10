local status, color = pcall(require, "tokyonight")
if not status then
	print("Colorscheme is not found")
	return
end

color.setup({
	style = "night",
})

vim.cmd.colorscheme("tokyonight")
