local setup, tailwindcsscolors = pcall(require, "tailwindcss-colors")
if not setup then
	print("Tailwindcss-colors is not downloaded")
	return
end

tailwindcsscolors.setup()
