local status, blankline = pcall(require, "indent_blankline")
if not status then
	print("indent_blankline is not downloaded")
	return
end

blankline.setup({
	show_current_context = true,
})
