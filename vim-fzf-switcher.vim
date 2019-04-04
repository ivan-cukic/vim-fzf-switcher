" The plugin code is actually not in this file,
" keep looking

source <sfile>:h/org.kde.activities/main.vim

command! Switch call fzf#run(fzf#vim#with_preview(fzf#wrap(
        \ {'source': 'fd | '.expand('<sfile>:h').'/vim-fzf-switcher-impl/most-similar-files.py '.expand('%:p')})))

