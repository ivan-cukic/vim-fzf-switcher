" The plugin code is actually not in this file,
" keep looking


let s:fzf_switcher_command = expand('<sfile>:h').'/vim-fzf-switcher-impl/most-similar-files.py'

" command! Switch call fzf#run(fzf#wrap(
"         \ {'source': 'fd|'.s:fzf_switcher_command.' '.expand('%:p')}))

command! Switch call fzf#run(fzf#vim#with_preview(fzf#wrap(
        \ {'source': 'fd|'.s:fzf_switcher_command.' '.expand('%:p')})))

