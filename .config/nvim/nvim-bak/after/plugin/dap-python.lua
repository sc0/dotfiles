local dap = require("dap-python")
dap.setup(vim.g.python_host_program)
dap.test_runner = "pytest"
dap.resolve_python = function()
	return vim.g.python_host_prog
end