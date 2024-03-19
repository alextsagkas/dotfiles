local status, color = pcall(require, "onedark")
if not status then
	print("Colorscheme is not found")
	return
end

color.setup({
	style = "warmer",
})

vim.cmd.colorscheme("onedark")
