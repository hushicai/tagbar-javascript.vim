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
        \ 'p:Propertes:0:0',
        \ 'c:Context:1:0'
    \ ],
    \ 'sro'        : '::',
    \ 'kind2scope' : {
        \ 'c' : 'context',
    \ },
    \ 'scope2kind' : {
        \ 'context'  : 'c'
    \ }
\ }
