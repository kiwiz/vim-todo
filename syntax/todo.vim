" Vim syntax file
" Language: Todo List
" Maintainer: Kai

if exists("b:current_syntax")
  finish
end

syn match tdlItemBacklog /^\s*\- .*/
syn match tdlItemCurrent /^\s*@ .*/
syn match tdlItemBlocked /^\s*! .*/
syn match tdlItemDone    /^\s*x .*/
syn match tdlItemUnknown /^\s*% .*/
syn match tdlTitle       /^# .*/

hi def tdlItemBacklog ctermfg=12
hi def tdlItemCurrent ctermfg=2
hi def tdlItemBlocked ctermfg=1
hi def tdlItemDone    ctermfg=10
hi def tdlItemUnknown ctermfg=13
hi def tdlTitle       ctermfg=9 cterm=bold,underline

let b:current_syntax = "todo"
