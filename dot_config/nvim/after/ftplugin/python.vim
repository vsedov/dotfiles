

filetype indent on
filetype on
filetype plugin on





setlocal colorcolumn=90



let g:runner_python_ex = 'python3'
let g:runner_python_options = ''

let b:ale_fixers = ['nayvy#ale_fixer', 'black']


let g:test#strategy = "dispatch"
let g:test#python#pytest#options = "--disable-warnings --color=yes"
let g:test#python#runner = "pytest"




