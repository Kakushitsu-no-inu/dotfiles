let g:cpp_class_scope_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1

let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"let g:clang_format#auto_format = 1
let g:clang_format#detect_style_file = 1
let g:clang_format#enable_fallback_style=0

nnoremap <C-f> :<C-u>ClangFormat<CR>

set tags=tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

hi LspCxxHlSymParameter guifg=#e06c75 
hi LspCxxHlSymMethod guifg=#af87ff 
hi LspCxxHlSymStaticMethod guifg=#af87ff 
hi LspCxxHlSymConstructor guifg=#af87ff 

let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1
