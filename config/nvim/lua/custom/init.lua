-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.cmd('autocmd BufNewFile,BufRead sketchybarrc set filetype=sh')
vim.cmd('autocmd BufNewFile,BufRead skhdrc set filetype=sh')


