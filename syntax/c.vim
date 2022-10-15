" Matches methods.
syntax match cCustomParanthesis "(" contains=cParen
syntax match cCustomFunction "\w\+\s*(" contains=cCustomParanthesis
hi def link cCustomFunction Function

hi def link cTodo Todo
