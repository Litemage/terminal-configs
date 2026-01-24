local ts = require('nvim-treesitter')
local ensure_installed = {'rust', 'c', 'python'}

ts.install(ensure_installed)

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'rust', 'javascript', 'zig' },
	callback = function()
		-- syntax highlighting, provided by Neovim
		vim.treesitter.start()
		-- folds, provided by Neovim, uncomment to use
		-- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- vim.wo.foldmethod = 'expr'
		-- indentation, provided by nvim-treesitter
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
