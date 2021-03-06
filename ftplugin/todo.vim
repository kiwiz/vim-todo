function TodoSetStatus(num, sub)
  let l:line = getline(a:num)
  let l:m = match(l:line, "^\s*[-@x!%]")
  if l:m == -1
    return
  endif
  let l:c = match(l:line, "[-@x!%]")
  call setline(a:num, strpart(l:line, 0, l:c) . a:sub . strpart(l:line, l:c + 1))
endfunction

let maplocalleader='\'

nmap <silent> <LocalLeader>D :g/^\s*x .*/d <bar> noh<cr>

nmap <silent> <LocalLeader>- :call TodoSetStatus('.', '-')<cr>
nmap <silent> <LocalLeader>@ :call TodoSetStatus('.', '@')<cr>
nmap <silent> <LocalLeader>x :call TodoSetStatus('.', 'x')<cr>
nmap <silent> <LocalLeader>! :call TodoSetStatus('.', '!')<cr>
nmap <silent> <LocalLeader>% :call TodoSetStatus('.', '%')<cr>

set comments=b:#,n:>,b:-,b:!,b:@,b:x

setlocal foldmethod=expr
setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
set foldtext=getline(v:foldstart)
set fillchars=fold:\ 
set foldlevel=1
