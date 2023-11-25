local status, blankline = pcall(require, "ibl")
if not status then
	print("indent_blankline is not downloaded")
	return
end

blankline.setup({})
