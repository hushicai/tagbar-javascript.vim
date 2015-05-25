if !exists('g:tagbar_javascript_ctags_bin')
    let g:tagbar_javascript_ctags_bin = 'esctags'
endif

if !exists('g:tagbar_javascript_ctags_memory_limit')
    let g:tagbar_javascript_ctags_memory_limit = '128M'
endif

let g:tagbar_type_javascript = {
    \ 'ctagsbin'  : g:tagbar_javascript_ctags_bin,
    \ 'ctagsargs' : '--memory="' . tagbar_javascript_ctags_memory_limit . '" -f -',
    \ 'kinds'     : [
        \ 'a:Parameters:0',
        \ 'v:Variables:0:0',
        \ 'f:Functions:1',
        \ 'p:Propertes:0:0',
        \ 'n:Namespaces:1:0'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'f' : 'function',
        \ 'n' : 'namespace'
    \ },
    \ 'scope2kind' : {
        \ 'function'  : 'f',
        \ 'namespace' : 'n'
    \ }
\ }
