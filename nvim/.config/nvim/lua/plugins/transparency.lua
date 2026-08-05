return {
  {
		'xiyaowong/transparent.nvim',
		lazy = false,
		config = function()
			vim.cmd("TransparentEnable")
			vim.keymap.set("n", "<C-t>", ":TransparentToggle<CR>")
		end
	},
}
