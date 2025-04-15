return {
	{
		"zbirenbaum/copilot.lua",
		lazy = true,
		opts = {
			suggestion = {
				enabled = true,
				auto_trigger = false,
				keymap = {
					accept = "<M-->",
					accept_word = false,
					accept_line = false,
					next = "<M-.>",
					prev = "<M-,>",
					dismiss = "<C-->",
				},
			},
		},
	},
}
