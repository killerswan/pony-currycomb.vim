"see https://github.com/scrooloose/syntastic/wiki/Syntax-Checker-Guide#external

if exists("g:loaded_syntastic_pony_ponyc_checker")
    finish
endif
let g:loaded_syntastic_pony_ponyc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_pony_ponyc_GetLocList() dict
"    let makeprg = self.makeprgBuild({'args': '--pass=expr', 'fname': expand('%:p:h')})
    let makeprg = self.makeprgBuild({'args': 'banana'})

    let errorformat = '%f:%l:%c: %m'

"Rust stuff
"    " Old errorformat (before nightly 2016/08/10)
"    let errorformat  =
"        \ '%E%f:%l:%c: %\d%#:%\d%# %.%\{-}error:%.%\{-} %m,'   .
"        \ '%W%f:%l:%c: %\d%#:%\d%# %.%\{-}warning:%.%\{-} %m,' .
"        \ '%C%f:%l %m'
"        
"    " New errorformat (after nightly 2016/08/10)
"    let errorformat  .=
"        \ ',' .
"        \ '%-G,' .
"        \ '%-Gerror: aborting %.%#,' .
"        \ '%-Gerror: Could not compile %.%#,' .
"        \ '%Eerror: %m,' .
"        \ '%Eerror[E%n]: %m,' .
"        \ '%-Gwarning: the option `Z` is unstable %.%#,' .
"        \ '%Wwarning: %m,' .
"        \ '%Inote: %m,' .
"        \ '%C %#--> %f:%l:%c'

    return SyntasticMake({'makeprg': makeprg, 'errorformat': errorformat })
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({'filetype': 'pony', 'name': 'ponyc'})

let &cpo = s:save_cpo
unlet s:save_cpo
