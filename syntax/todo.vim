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

hi def link tdlItemCurrent Statement
hi def link tdlItemBlocked Special
hi def link tdlItemDone    Comment
hi def link tdlItemUnknown Underlined
hi def link tdlTitle       Title

let b:current_syntax = "todo"
