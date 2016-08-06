function! powerclose#close()
  if bufname('%') ==# '[command]'
    <c-c>
  elseif &readonly
    :bd!
  elseif &buftype ==# 'terminal' "neovim terminal in insert mode
    :bd!
  elseif &buftype ==# 'nofile'
    :bd!
  elseif &buftype ==# 'quickfix'
    :bd!
  elseif bufname('%') ==# '' && line('$') ==# 1 && getline(1) ==# '' "new empty buffer
    :bd!
  else
    :w
    :bd
  endif
endfunction

