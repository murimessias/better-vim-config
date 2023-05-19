local mappings = {
  custom = {
    ["<leader>b"] = {
      name = "﩯Buffer",
      ["1"] = { "<cmd>BufferLineGoToBuffer 1<CR>", "goto 1" },
      ["2"] = { "<cmd>BufferLineGoToBuffer 2<CR>", "goto 2" },
      ["3"] = { "<cmd>BufferLineGoToBuffer 3<CR>", "goto 3" },
      ["4"] = { "<cmd>BufferLineGoToBuffer 4<CR>", "goto 4" },
      ["5"] = { "<cmd>BufferLineGoToBuffer 5<CR>", "goto 5" },
      ["6"] = { "<cmd>BufferLineGoToBuffer 6<CR>", "goto 6" },
      ["7"] = { "<cmd>BufferLineGoToBuffer 7<CR>", "goto 7" },
      ["8"] = { "<cmd>BufferLineGoToBuffer 8<CR>", "goto 8" },
      ["9"] = { "<cmd>BufferLineGoToBuffer 9<CR>", "goto 9" },
      c = { "<cmd>BufferLinePickClose<CR>", "delete buffer" },
      s = { "<cmd>BufferLinePick<CR>", "pick buffer" },
      b = { "<cmd>b#<CR>", "Previous" },
      h = { "<cmd>BufferLineCloseLeft<CR>", "Close all to the left" },
      l = { "<cmd>BufferLineCloseRight<CR>", "Close all to the right" },
      D = { "<cmd>BufferLineSortByDirectory<CR>", "Sort by directory" },
      L = { "<cmd>BufferLineSortByExtension<CR>", "Sort by language" },
    },
    ["<leader>f"] = { ":Format<CR>", "󰝓 Format current file" },
    ["<leader>h"] = {
      name = " Git",
      c = { ":Gitsigns toggle_current_line_blame<CR>", "Toggle current line blame" },
      d = { ":Gitsigns toggle_deleted<CR>", "Toggle deleted" },
      l = { ":Gitsigns toggle_linehl<CR>", "Toggle line" },
      n = { ":Gitsigns toggle_numhl<CR>", "Toggle number" }
    },
    ["<leader>R"] = {
      name = " Replace",
      f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Current Buffer" },
      p = { "<cmd>lua require('spectre').open()<CR>", "Project" },
      w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Replace Word" },
    },
  },
}

return mappings
