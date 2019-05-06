let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['jshint'],
\   'go': ['go', 'golint', 'errcheck']
\}  

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
