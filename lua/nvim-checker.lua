print("hello fys");

local function some_function()
  print("Hello fys-vim from function")
  local file = vim.fn.expand("%:p")
  print("my file is " .. file)
  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "echo hello fys-nvim\\n")'
  vim.cmd(command)
end

return {
  some_function = some_function
}
