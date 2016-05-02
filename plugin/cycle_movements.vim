let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_cycle_movements") || &cp || v:version < 700
  finish
endif
let g:loaded_cycle_movements = 1

function! CycleMovements(firstOp, thenOp)
  let pos = getpos('.')
  execute "normal! " . a:firstOp
  if pos == getpos('.')
    execute "normal! " . a:thenOp
  endif
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
