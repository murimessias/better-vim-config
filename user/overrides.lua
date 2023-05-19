local overrides = {
  vim.cmd [[
    set undodir=~/.config/nvim/undos
    set undofile
    set relativenumber
    vnoremap t :'<,'>sort<CR>
    nnoremap <S-A-j> :m .+1<CR>==
    nnoremap <S-A-k> :m .-2<CR>==
    vnoremap <S-A-j> :m '>+1<CR>gv=gv
    inoremap <S-A-j> <Esc>:m .+1<CR>==gi
    inoremap <S-A-k> <Esc>:m .-2<CR>==gi
    vnoremap <S-A-k> :m '<-2<CR>gv=gv
    nnoremap ,, <S-a>,<ESC>
    inoremap ,, <ESC><S-a>,<ESC>
    nnoremap ;; <S-a>;<ESC>
    inoremap ;; <ESC><S-a>;<ESC>
  ]]
}

return overrides
