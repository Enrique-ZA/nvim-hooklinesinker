# Hooklinsinker plugin
## About
> Stores the current position, the line and file.
> It can be used to jump back to a specific place in a file from any file.
## Installation
> Example:
>   
> If you're using [vim-plug](https://github.com/junegunn/vim-plug), add the following line to your `init.vim` file:
>   
```vim
Plug 'Enrique-ZA/nvim-hooklinesinker'
```
>   
> Then source your init.vim and run :PlugInstall.
>   
## Usage
>   
> To use the plugin, map the functions to keys of your choice:
>   
```vim
nnoremap <F2> :lua require'hooklinesinker'.save_position()<CR>
nnoremap <F3> :lua require'hooklinesinker'.return_position()<CR>
```
