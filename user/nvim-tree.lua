local nvim_tree = {
	update_cwd = false,
	update_focused_file = {
		update_cwd = false,
	},
	view = {
		adaptive_size = false,
	},
	filters = {
		dotfiles = false,
		exclude = { "github.*" },
	},
}

return nvim_tree
