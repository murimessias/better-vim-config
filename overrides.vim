lua << EOF
require("nvim-web-devicons").set_icon {
  ["stories.tsx"] = {
    icon = "",
    color = "#ff0083",
    name = "Stories"
  },
  [".eslintrc.json"] = {
    icon = " ",
    color = "#4b32c3",
    name = "Eslint"
  },
  ["tailwind.config.js"] = {
    icon = "󱏿 ",
    color = "#3b82f6",
    name = "TailwindCSS"
  }
}

require("spectre").setup {
    color_devicons = true,
    highlight = {
      ui = "String",
      search = "DiffChange",
      replace = "DiffDelete",
    },
    mapping = {
      ["toggle_line"] = {
        map = "t",
        cmd = "<cmd>lua require('spectre').toggle_line()<CR>",
        desc = "toggle current item",
      },
      ["enter_file"] = {
        map = "<cr>",
        cmd = "<cmd>lua require('spectre.actions').select_entry()<CR>",
        desc = "goto current file",
      },
      ["send_to_qf"] = {
        map = "Q",
        cmd = "<cmd>lua require('spectre.actions').send_to_qf()<CR>",
        desc = "send all item to quickfix",
      },
      ["replace_cmd"] = {
        map = "c",
        cmd = "<cmd>lua require('spectre.actions').replace_cmd()<CR>",
        desc = "input replace vim command",
      },
      ["show_option_menu"] = {
        map = "o",
        cmd = "<cmd>lua require('spectre').show_options()<CR>",
        desc = "show option",
      },
      ["run_replace"] = {
        map = "R",
        cmd = "<cmd>lua require('spectre.actions').run_replace()<CR>",
        desc = "replace all",
      },
      ["change_view_mode"] = {
        map = "m",
        cmd = "<cmd>lua require('spectre').change_view()<CR>",
        desc = "change result view mode",
      },
      ["toggle_ignore_case"] = {
        map = "I",
        cmd = "<cmd>lua require('spectre').change_options('ignore-case')<CR>",
        desc = "toggle ignore case",
      },
      ["toggle_ignore_hidden"] = {
        map = "H",
        cmd = "<cmd>lua require('spectre').change_options('hidden')<CR>",
        desc = "toggle search hidden",
      },
    },
    find_engine = {
      ["rg"] = {
        cmd = "rg",
        args = {
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
        },
        options = {
          ["ignore-case"] = {
            value = "--ignore-case",
            icon = "[I]",
            desc = "ignore case",
          },
          ["hidden"] = {
            value = "--hidden",
            desc = "hidden file",
            icon = "[H]",
          },
        },
      },
      ["ag"] = {
        cmd = "ag",
        args = {
          "--vimgrep",
          "-s",
        },
        options = {
          ["ignore-case"] = {
            value = "-i",
            icon = "[I]",
            desc = "ignore case",
          },
          ["hidden"] = {
            value = "--hidden",
            desc = "hidden file",
            icon = "[H]",
          },
        },
      },
    },
    replace_engine = {
      ["sed"] = {
        cmd = "sed",
        args = sed_args,
      },
      options = {
        ["ignore-case"] = {
          value = "--ignore-case",
          icon = "[I]",
          desc = "ignore case",
        },
      },
    },
    default = {
      find = {
        cmd = "rg",
        options = { "ignore-case" },
      },
      replace = {
        cmd = "sed",
      },
    },
    replace_vim_cmd = "cdo",
    is_open_target_win = true, --open file on opener window
    is_insert_mode = false, -- start open panel on is_insert_mode
  }

require('gitsigns').setup()
EOF

set mouse=a

" Sort lines
vnoremap t :'<,'>sort<CR>

" Move lines
nnoremap <S-A-j> :m .+1<CR>==
nnoremap <S-A-k> :m .-2<CR>==
vnoremap <S-A-j> :m '>+1<CR>gv=gv
inoremap <S-A-j> <Esc>:m .+1<CR>==gi
inoremap <S-A-k> <Esc>:m .-2<CR>==gi
vnoremap <S-A-k> :m '<-2<CR>gv=gv

" Insert "," at end of line
nnoremap ,, <S-a>,<ESC>
inoremap ,, <ESC><S-a>,<ESC>

" Insert ";" at end of line
nnoremap ;; <S-a>;<ESC>
inoremap ;; <ESC><S-a>;<ESC>

" Split horizontal down
set splitbelow

" Split vertical right
set splitright

" Allow edit without save before open another file
set hidden

" Preview changes when use :%s
set inccommand=split

" Copy to outside
set clipboard+=unnamedplus

" Ignore cases
set ignorecase

" Don't ignore cases when there is a uppercase search
set smartcase

" History file directory
set undodir=~/.config/nvim/undos

" Auto save when use 'undo'
set undofile

" Always show sign column
set signcolumn=yes
highlight clear SignColumn

" Save current buffer
nnoremap <leader>w :w<CR>
