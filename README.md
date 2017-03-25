# Syntastic support for the Pony language


## No highlighting provided

This is a single-purpose Vim plugin for the sole purpose of providing syntastic support, and which should be compatible (with no conflicts) with any more fully-featured plugins.

For syntax highlighting, you might try out either
* jakwings' [vim-pony](https://github.com/jakwings/vim-pony) which doesn't have a checker but provides syntax highlighting, or
* David Leonard's [pony-vim-syntax](https://github.com/dleonard0) which provides an identical (for now) checker, named `ponyc`, plus syntax highlighting.


## Checker setup

To enable this syntax checker, add it to your list of Pony checkers:
```vim
let g:syntastic_pony_checkers = ['currycomb']
```

To confirm Syntastic is doing the right thing you might call `:SyntasticInfo`,
looking for something like this:
```
Syntastic version: 3.8.0-34 (Vim 800, Darwin, GUI)
Info for filetype: pony
Global mode: active
Filetype pony is active
The current file will be checked automatically
Available checker: currycomb
Currently enabled checker: currycomb
```

And if your `ponyc` is in an unusual location:
```vim
let g:syntastic_pony_ponyc_exe = '/path/to/your/ponyc'
```

## Internals

Currently, the syntax checker runs `ponyc --pass=expr` in the parent directory, just like David Leonard's plugin does.


## References

* Syntastic's [Syntax Checker Guide](https://github.com/vim-syntastic/syntastic/wiki/Syntax-Checker-Guide)
* [Learn Vim Script The Hard Way](http://learnvimscriptthehardway.stevelosh.com/)
* Rust's [rustc checker](https://github.com/rust-lang/rust.vim/blob/master/syntax_checkers/rust/rustc.vim) which provides lots of formatting
* Elixir's [elixir or mix checker](https://github.com/vim-syntastic/syntastic/blob/master/syntax_checkers/elixir/elixir.vim) which changes executable
* Syntastic's default [pyflakes checker](https://github.com/vim-syntastic/syntastic/blob/master/syntax_checkers/python/pyflakes.vim)
