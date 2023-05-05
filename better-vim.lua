return {
  theme = {
    name = "catppuccin",
    catppuccin_flavour = "frappe"
  },
  flags = {
    disable_tabs = true
  },
  nvim_tree = {
    filters = {
      dotfiles = false
    },
    view = {
      adaptive_size = true
    }
  },
  mappings = {
    custom = {
      ["R"] = {
        name = "Replace",
        f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Current Buffer" },
        p = { "<cmd>lua require('spectre').open()<cr>", "Project" },
        w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" }
      }
    }
  }
}
