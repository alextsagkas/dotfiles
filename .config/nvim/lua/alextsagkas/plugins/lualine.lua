local status, lualine = pcall(require, "lualine")
if not status then
	print("Lualine is not downloaded")
	return
end

lualine.setup({
	options = {
		theme = "catppuccin",
	},
})
