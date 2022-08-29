local function check()
  vim.cmd("vsplit | terminal")
  local format = ':call jobsend(b:terminal_job_id, "cargo fmt --all\\n")'
  vim.cmd(format)

  local refresh = ':bufdo e!\\n'
  vim.cmd(refresh)

  local clippy = ':call jobsend(b:terminal_job_id, "cargo clippy --workspace --all-targets -- -D warnings -D clippy::print_stdout -D clippy::print_stderr\\n")'
  vim.cmd(clippy)

  local test = ':call jobsend(b:terminal_job_id, "cargo test --all\\n")'
  vim.cmd(test)
end

return {
  check = check
}
