-- autoload files on change
vim.cmd [[au CursorHold * checktime]]

-- auto trim whitespace before write
--vim.cmd [[autocmd BufWritePre * %s/\s\+$//e]]

-- stop fookin autocommenting when i go to a new line
vim.api.nvim_create_autocmd("BufEnter", {
    callback = function() vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" } end,
})


