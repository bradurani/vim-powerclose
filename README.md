# vim-powerclose
A vim plugin allowing you to close any type of window with a single function

vim-powerclose provides a single function called `powerclose#close`

It is able to close the following:
- a buffer, saving first (with '`:w` `:bd`)
- a new empty buffer (with `:bd!`)
- a readonly buffer (with `:bd!`)
- a [neovim](https://neovim.io/) terminal (with `:bd!`)

vim-powerclose do **not** map any keys by default. To use it you will need to
create a mapping such as:
```
nnoremap <leader>q :call powerclose#close()<CR>
```

### Installing
Works with any plugin manager. For [`vim-plug`](https://github.com/junegunn/vim-plug), my favorite plugin manager, 
Just add this to your `.vimrc`
```
Plug 'bradurani/vim-powerclose'
```

### Contributing
Just open a pull request. Report issues on the [https://github.com/bradurani/vim-powerclose/issues](issues page).

