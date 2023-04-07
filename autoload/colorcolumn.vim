function! s:column(expr) abort
    return a:expr =~# '^[-+]\?[1-9][0-9]*$' ? a:expr : col(a:expr)
endfunction

function! colorcolumn#clear() abort
    setlocal colorcolumn=
endfunction

function! colorcolumn#reset() abort
    setlocal colorcolumn&
endfunction

function! colorcolumn#has(expr = '.') abort
    return ','.&colorcolumn.',' =~# ','.s:column(a:expr).','
endfunction

function! colorcolumn#set(expr = '.') abort
    execute $'setlocal colorcolumn+={s:column(a:expr)}'
endfunction

function! colorcolumn#unset(expr = '.') abort
    execute $'setlocal colorcolumn-={s:column(a:expr)}'
endfunction

function! colorcolumn#toggle(expr = '.') abort
    if colorcolumn#has(a:expr)
        call colorcolumn#unset(a:expr)
    else
        call colorcolumn#set(a:expr)
    endif
endfunction
