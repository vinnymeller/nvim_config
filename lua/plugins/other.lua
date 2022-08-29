require("nvim-autopairs").setup({})
require('leap').set_default_keymaps()

require("auto-save").setup({
    -- function that determines whether to save the current buffer or not
    -- return true: if buffer is ok to be saved
    -- return false: if it's not ok to be saved
    condition = function(buf)
        local fn = vim.fn
        local utils = require("auto-save.utils.data")
        if fn.getbufvar(buf, "&modifiable") == 1 and
            utils.not_in(fn.getbufvar(buf, "&filetype"), {}) and
            fn.expand('%:p') ~= "" then
            return true -- met condition(s), can save
        end
        return false -- can't save
    end,
    debounce_delay = 500, -- saves the file at most every `debounce_delay` milliseconds
})
