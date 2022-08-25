-- setup debugger
require("dapui").setup()

local dap = require("dap")
dap.configurations.python = {
    {
        type = "python";
        request = "launch";
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
            return "python"
        end;
    }
}

dap.adapters.python = {
    type = "executable";
    command = "python";
    args = {"-m", "debugpy.adapter"};
}
