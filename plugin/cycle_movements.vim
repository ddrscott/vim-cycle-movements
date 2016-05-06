let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_cycle_movements") || &cp || v:version < 700
  finish
endif
let g:loaded_cycle_movements = 1

function! CycleMovements(firstOp, secondOp, ...) abort
  let s:cycle_movement = get(s:, "cycle_movement", [1, a:firstOp])
  if s:cycle_movement[1] != a:firstOp
    let s:cycle_movement = [1, a:firstOp]
  endif

  let try_num = 1
  while try_num <= a:0 + 2
    let try_num = try_num + 1
    if s:cycle_movement[0] == 1
      let l:command = a:firstOp
    elseif s:cycle_movement[0] == 2
      let l:command = a:secondOp
    elseif a:0 == 1 && s:cycle_movement[0] == 3
      let l:command = a:1
    else
      echom "Something went wrong... (s:cycle_movement = " . string(s:cycle_movement) . ")"
      return
    endif

    if (a:0 == 0 && s:cycle_movement[0] == 2) || (a:0 == 1 && s:cycle_movement[0] == 3)
      let s:cycle_movement[0] = 1
    else
      let s:cycle_movement[0] = s:cycle_movement[0] + 1
    endif

    let pos = getpos('.')
    execute "normal! " . l:command
    if pos != getpos('.')
      break
    endif
  endwhile
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
