if exists("g:loaded_syntastic_pony_ponyc_checker")
  finish
endif
let g:loaded_syntastic_pony_ponyc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_pony_ponyc_GetLocList() dict
  let makeprg = self.makeprgBuild({'exe': 'ponyc', 'args': '--pass=expr', 'fname': expand('%:p:h')})
  let errorformat = '%f:%l:%c: %m'

  return SyntasticMake({'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({'filetype': 'pony', 'name': 'ponyc'})

let &cpo = s:save_cpo
unlet s:save_cpo
