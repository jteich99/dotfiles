return {
	"akinsho/toggleterm.nvim",
	-- lazy = true,
	config = function()
		require("toggleterm").setup {
            vim.keymap.set('n', '<M-1>', ":ToggleTerm direction=horizontal<cr>"),
            vim.keymap.set('n', '<M-2>', ":ToggleTerm direction=vertical size=100<cr>"),
            vim.keymap.set('n', '<M-3>', ":ToggleTerm direction=float<cr>"),
            vim.keymap.set('t', '<C-l>', [[<C-\><C-n>]]),
		}
	end,
}
