local status, notify = pcall(require, "notify")
if not status then
	print("notify is not downloaded")
	return
end

notify.setup({
	background_colour = "#000000",
})
