module = {}

function module.clippy()
	if vim.g.screen_vertical then
		vim.cmd("split | terminal")
	else
		vim.cmd("vsplit | terminal")
	end
	local clippy = ':call jobsend(b:terminal_job_id, "cargo clippy --workspace --all-targets -- -D warnings -D clippy::print_stdout -D clippy::print_stderr\\n")'
	vim.cmd(clippy)
end

function module.check()
	if vim.g.screen_vertical then
		vim.cmd("split | terminal")
	else
		vim.cmd("vsplit | terminal")
	end
	local check = ':call jobsend(b:terminal_job_id, "cargo check\\n")'
	vim.cmd(check)
end

function module.test()
	if vim.g.screen_vertical then
		vim.cmd("split | terminal")
	else
		vim.cmd("vsplit | terminal")
	end
	local test = ':call jobsend(b:terminal_job_id, "cargo test --all\\n")'
	vim.cmd(test)
end

return module
