local status, bufferline = pcall(require, "bufferline")
if not status then
	print("bufferline is not downloaded")
	return
end

bufferline.setup({
	options = {
		numbers = "ordinal", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,

		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"buffer
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"

		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",

		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,

		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,

		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "center",
				separator = "",
			},
		},

		color_icons = true,
		show_buffer_icons = true,
		show_buffer_close_icons = false,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
		indicator = {
			-- icon = "▎", -- this should be omitted if indicator style is not 'icon'
			style = "none", -- "icon" | "underline" |
		},
	},

	highlights = {

		fill = {
			fg = "#232326",
			bg = "#232326",
		},

		buffer_selected = {
			fg = "#85ADF0",
			bold = true,
			italic = false,
		},

		numbers_selected = {
			fg = "#85ADF0",
			bold = true,
			italic = false,
		},
	},
})
