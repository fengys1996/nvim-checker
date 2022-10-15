module = {}

function module.clippy()
	vim.cmd("vsplit | terminal")
	local clippy = ':call jobsend(b:terminal_job_id, "cargo clippy --workspace --all-targets -- -D warnings -D clippy::print_stdout -D clippy::print_stderr\\n")'
	vim.cmd(clippy)
end

function module.check()
	vim.cmd("vsplit | terminal")
	local check = ':call jobsend(b:terminal_job_id, "cargo check\\n")'
	vim.cmd(check)
end

function module.test()
	vim.cmd("vsplit | terminal")
	local test = ':call jobsend(b:terminal_job_id, "cargo test --all\\n")'
	vim.cmd(test)
end

return module
