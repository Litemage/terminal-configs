function ColorMyPencils(color)
	-- color = color or "rose-pine"
	color = color or "kanagawa-dragon"
	vim.cmd.colorscheme(color)

	-- Sets the background transparent (Uncomment if you want this)
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
