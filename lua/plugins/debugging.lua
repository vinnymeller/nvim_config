-- setup debugger
require("dapui").setup()

local dap = require("dap")
dap.configurations.python = {
	{
		type = "python",
		request = "launch",
		name = "Launch file",
		program = "${file}",
		pythonPath = function()
			return "python"
		end,
	},
}

dap.configurations.rust = {
	{
		name = "Launch file",
		type = "codelldb",
		request = "launch",
		program = function()
			return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
		end,
		cwd = "${workspaceFolder}",
		stopOnEntry = true,
	},
}

dap.configurations.c = dap.configurations.rust
dap.configurations.cpp = dap.configurations.rust

dap.adapters.python = {
	type = "executable",
	command = "python",
	args = { "-m", "debugpy.adapter" },
}

dap.adapters.codelldb = {
	type = "executable",
	command = "lldb-vscode",
	name = "rt_lldb",
}
