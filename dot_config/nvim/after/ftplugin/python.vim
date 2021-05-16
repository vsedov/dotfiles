
filetype indent on
filetype on
filetype plugin on




syntax off

setlocal colorcolumn=90


let g:runner_python_ex = 'python3'
let g:runner_python_options = ''



let g:test#strategy = "dispatch"
let g:test#python#pytest#options = "--disable-warnings --color=yes"
let g:test#python#runner = "pytest"





"au BufWrite * :Black