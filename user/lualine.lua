local lualine = {
	sections = {
		a = { "mode" },
		b = { "branch" },
		c = { "filename" },
		x = { "fileformat", "filetype" },
		y = { "progress" },
		z = { "location" },
	},
	options = {
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
	}
}

return lualine
