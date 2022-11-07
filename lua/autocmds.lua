-- helper functions
local get_current_file = function()
	local file = vim.fn.expand("%:p")
	if file == "" then
		return nil
	else
		return file
	end
end

local file_exists_on_disk = function()
	if get_current_file() == nil then
		return false
	else
		return true
	end
end

local file_is_readable = function()
	local file = get_current_file()
	if vim.fn.filereadable(file) == 1 then
		return true
	else
		return false
	end
end

local file_is_writeable = function()
	local file = get_current_file()
	if vim.fn.filewritable(file) == 1 then
		return true
	else
		return false
	end
end

-- auto-reload files when modified externally
-- https://unix.stackexchange.com/a/383044
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
	-- command = "if mode() != 'c' | checktime | endif",
	callback = function()
		if file_exists_on_disk() and file_is_readable() then
			vim.cmd("checktime")
		end
	end,
	pattern = { "*" },
})

-- stop fookin autocommenting when i go to a new line
vim.api.nvim_create_autocmd("BufEnter", {
	callback = function()
		vim.opt.formatoptions = vim.opt.formatoptions - { "c", "r", "o" }
	end,
})

-- autoformat the code.
-- there are issues with autopairs and the formatting that is annoying to have
-- it autoformat on save, so we do it if we leave the buffer or when we open a new window
-- since we won't be editing the buffer immediately upon opening a new window
vim.api.nvim_create_autocmd({ "WinNew" }, {
	callback = function()
		if file_exists_on_disk() and file_is_writeable() then
			vim.cmd("FormatWrite")
		end
	end,
	pattern = { "*" },
})
