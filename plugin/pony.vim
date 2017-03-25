if exists("g:loaded_syntastic_pony_filetype")
  finish
endif
let g:loaded_syntastic_pony_filetype = 1
let s:save_cpo = &cpo
set cpo&vim

" This is to let Syntastic know about the Pony filetype.
" It enables tab completion for the 'SyntasticInfo' command.
" (This does not actually register the syntax checker.)
if exists('g:syntastic_extra_filetypes')
    call add(g:syntastic_extra_filetypes, 'pony')
else
    let g:syntastic_extra_filetypes = ['pony']
endif

let &cpo = s:save_cpo
unlet s:save_cpo
