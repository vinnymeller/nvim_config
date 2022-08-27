-- autoload files on change
vim.cmd [[au CursorHold * checktime]]

vim.cmd [[autocmd BufWritePre * %s/\s\+$//e]]
