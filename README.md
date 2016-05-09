# Overview

Ideas extracted from http://ddrscott.github.io/blog/2016/vim-toggle-movement

## Usage

```
nnoremap <silent> ^ :call ToggleMovement('^', '$' ,'0')<cr>
nnoremap <silent> 0 :call ToggleMovement('0' ,'^', '$')<cr>
nnoremap <silent> $ :call ToggleMovement('$', '0', '^')<cr>
nnoremap <silent> ; :call ToggleMovement(';', ',')<cr>
nnoremap <silent> , :call ToggleMovement(',', ';')<cr>
nnoremap <silent> L :call ToggleMovement('L', 'M', 'H')<cr>
nnoremap <silent> M :call ToggleMovement('M', 'H', 'L')<cr>
nnoremap <silent> H :call ToggleMovement('H', 'L', 'M')<cr>
nnoremap <silent> G :call ToggleMovement('G', 'gg')<cr>
nnoremap <silent> gg :call ToggleMovement('gg', 'G')<cr>
```
