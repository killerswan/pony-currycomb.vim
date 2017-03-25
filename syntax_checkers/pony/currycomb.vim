if exists("g:loaded_syntastic_pony_currycomb_checker")
  finish
endif
let g:loaded_syntastic_pony_currycomb_checker = 1

let s:save_cpo = &cpo
set cpo&vim

" If we need extra stuff (like version checks) to set up the call to ponyc,
" consider adding an IsAvailable callback, too.

function! SyntaxCheckers_pony_currycomb_GetLocList() dict
  let makeprg = self.makeprgBuild({'args': '--pass=expr', 'fname': expand('%:p:h')})
  let errorformat = '%f:%l:%c: %m'

  return SyntasticMake({'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({'filetype': 'pony', 'name': 'currycomb', 'exec': 'ponyc'})

let &cpo = s:save_cpo
unlet s:save_cpo
