local function check()
  vim.cmd("vsplit | terminal")
  local clippy = ':call jobsend(b:terminal_job_id, "cargo clippy --workspace --all-targets -- -D warnings -D clippy::print_stdout -D clippy::print_stderr\\n")'
  vim.cmd(clippy)
end

return {
  check = check
}
