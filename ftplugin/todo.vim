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

nmap <LocalLeader>D :g/^\s*x .*/d<cr>

nmap <LocalLeader>- :call TodoSetStatus('.', '-')<cr>
nmap <LocalLeader>@ :call TodoSetStatus('.', '@')<cr>
nmap <LocalLeader>x :call TodoSetStatus('.', 'x')<cr>
nmap <LocalLeader>! :call TodoSetStatus('.', '!')<cr>
nmap <LocalLeader>% :call TodoSetStatus('.', '%')<cr>

set comments=b:#,n:>,b:-,b:!,b:@,b:x
