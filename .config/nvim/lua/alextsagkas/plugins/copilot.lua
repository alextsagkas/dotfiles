-- cycle to the next suggestion, if one is available.
vim.cmd([[imap <silent> <C-g> <Plug>(copilot-next)]])

-- ui color for suggestions
vim.cmd([[highlight CopilotSuggestion guifg=#555555 ctermfg=8]])
