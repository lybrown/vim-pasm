" Vim syntax file
" Language: pasm
" Maintainer: Lyren Brown, http://github.com/lybrown/vim-pasm
" $Id: $

syn match pasmWord "\h\w*" " Prevent Number from matching inside word

syn match pasmOpcode "\c\<\(add\|adc\|sub\|suc\|rsb\)\>"
syn match pasmOpcode "\c\<\(rsc\|lsl\|lsr\|and\|or\)\>"
syn match pasmOpcode "\c\<\(xor\|not\|min\|max\|clr\)\>"
syn match pasmOpcode "\c\<\(set\|scan\|lmbd\|mov\|ldi\)\>"
syn match pasmOpcode "\c\<\(lbbo\|sbbo\|lbco\|sbco\|zero\)\>"
syn match pasmOpcode "\c\<\(mvib\|mviw\|mvid\|jal\|jmp\)\>"
syn match pasmOpcode "\c\<\(qbgt\|qbge\|qblt\|qble\|qbeq\)\>"
syn match pasmOpcode "\c\<\(qbne\|qba\|qbbs\|qbbc\|wbs\)\>"
syn match pasmOpcode "\c\<\(wbc\|halt\|slp\|call\|ret\)\>"

syn match pasmComment "//.*"
syn match pasmNumber "[0-9]\+"
syn match pasmHexNumber "0x[0-9a-fA-F]\+"
syn match pasmHash "^\s*#\w\+"
syn match pasmTrailingSpace " \+$"
syn match pasmDot "^\s*\.\w\+"
syn match pasmLabel "^\s*\h\w\+:"
syn region pasmString start=/"/ end=/"/

hi def link pasmComment Comment
hi def link pasmNumber Number
hi def link pasmHexNumber Number
hi def link pasmLabel Identifier
hi def link pasmTrailingSpace Error
hi def link pasmOpcode Operator
hi def link pasmHash PreProc
hi def link pasmDot Type
hi def link pasmLabel Identifier
hi def link pasmString String
