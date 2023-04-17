local tresitter_context_setup, tresitter_context = pcall(require, "treesitter-context")
if not tresitter_context_setup then
	print("treesitter-context is not downloaded")
	return
end

tresitter_context.setup({})
