local function fmt()
  vim.cmd("vsplit | terminal")
  local command = ':call jobsend(b:terminal_job_id, "cargo fmt --all\\n")'
  vim.cmd(command)
  local refresh = ':e!'
  vim.cmd(refresh)
end

return {
  fmt = fmt
}
