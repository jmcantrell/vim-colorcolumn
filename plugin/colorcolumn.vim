if exists('g:colorcolumn_loaded')
    finish
endif
let g:colorcolumn_loaded = 1

let s:cpoptions_save = &cpoptions
set cpoptions&vim

command! ColorColumnClear call colorcolumn#clear()
command! ColorColumnReset call colorcolumn#reset()
command! -nargs=? ColorColumnSet call colorcolumn#set(<q-args>)
command! -nargs=? ColorColumnUnset call colorcolumn#unset(<q-args>)
command! -nargs=? ColorColumnToggle call colorcolumn#toggle(<q-args>)

let &cpoptions = s:cpoptions_save
