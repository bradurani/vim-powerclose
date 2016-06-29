function! powerclose#close()
  if bufname('%') ==# '' && line('$') ==# 1 && getline(1) ==# '' "new empty buffer
    :bd!
  elseif &readonly
    :bd!
  elseif &buftype ==# 'terminal' "neovim terminal in insert mode
    :bd!
  elseif &buftype ==# 'nofile'
    :bd!
  else
    :w
    :bd
  endif
endfunction

