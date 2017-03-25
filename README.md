# Syntastic support for the Pony language

## Setup

This Vim plugin should be installed with your packaging tool (e.g., Pathogen),
and requires Syntastic and Pony.

To enable this syntax checker, add it to your list of Pony checkers:
```vim
let g:syntastic_pony_checkers = ['ponyc']
```

And if your `ponyc` is in an unusual location:
```vim
let g:syntastic_pony_ponyc_exe = '/path/to/your/ponyc'
```

## References

* https://github.com/vim-syntastic/syntastic/wiki/Syntax-Checker-Guide
* https://github.com/rust-lang/rust.vim/blob/master/syntax_checkers/rust/rustc.vim
* https://github.com/dleonard0/pony-vim-syntax/blob/master/syntax_checkers/pony/ponyc.vim
* https://github.com/jakwings/vim-pony
* https://github.com/vim-syntastic/syntastic/blob/master/syntax_checkers/python/pyflakes.vim
* http://learnvimscriptthehardway.stevelosh.com/

