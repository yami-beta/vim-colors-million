" Name:    million.vim
" Author:  yami-beta
" License: The MIT License (MIT)

scriptencoding utf-8

let g:colors_name = 'million'
set background=dark
highlight clear
if exists("syntax_on")
  syntax reset
endif

let s:black     = [ '#161821', '234' ]
let s:white     = [ '#c0c6c9', '251' ]
let s:red       = [ '#c51b13', '160' ]
let s:blue      = [ '#126ef5', '27' ]
let s:yellow    = [ '#f8c42d', '220' ]
let s:green     = [ '#418353', '29' ]
let s:magenta   = [ '#f73e90', '198' ]
let s:cyan      = [ '#23a7b9', '37' ]
let s:gray      = [ '#7b7c7d', '244' ]
let s:dark_gray = [ '#454341', '238' ]
let s:dark_blue = [ '#1f4c86', '24' ]

function! s:highlight(group, fg, bg, ...)
  let opts = get(a:, 1, '')
  let highlight_ary = []

  if type(a:fg) == v:t_list
    let highlight_ary += ['ctermfg='.a:fg[1]] + ['guifg='.a:fg[0]]
  elseif a:fg ==# 'NONE'
    let highlight_ary += ['ctermfg=NONE'] + ['guifg=NONE']
  endif
  if type(a:bg) == v:t_list
    let highlight_ary += ['ctermbg='.a:bg[1]] + ['guibg='.a:bg[0]]
  elseif a:bg ==# 'NONE'
    let highlight_ary += ['ctermbg=NONE'] + ['guibg=NONE']
  endif

  execute 'highlight! '.a:group.' term=NONE '.join(highlight_ary, ' ').' '.opts
endfunction

call s:highlight('Normal', s:white, s:black)
call s:highlight('Comment', s:gray, '')

call s:highlight('Function', s:magenta, '')
call s:highlight('PreProc', s:blue, '')
call s:highlight('Special', s:blue, '')
call s:highlight('Identifier', s:magenta, '')
call s:highlight('Type', s:green, '')
call s:highlight('Statement', s:blue, '')
call s:highlight('Constant', s:cyan, '')
hi! link Title Constant

call s:highlight('Visual', '', s:dark_blue)
call s:highlight('Search', s:white, s:blue)
hi! link IncSearch Search
call s:highlight('Underlined', s:yellow, '', 'cterm=underline gui=underline')
call s:highlight('MatchParen', s:white, s:magenta)

hi! link LineNr Comment
call s:highlight('CursorLine', '', s:dark_gray, 'cterm=NONE gui=NONE')
call s:highlight('CursorColumn', '', s:dark_gray, 'cterm=NONE gui=NONE')
call s:highlight('CursorLineNr', s:yellow, s:dark_gray)
call s:highlight('SpecialKey', s:dark_gray, '', 'cterm=NONE gui=NONE')
hi! link NonText SpecialKey

call s:highlight('Cursor', s:black, s:yellow)
call s:highlight('Directory', s:magenta, '')
call s:highlight('Pmenu', s:white, s:dark_gray)
call s:highlight('PmenuSel', s:white, s:blue)
call s:highlight('PmenuSbar', s:white, s:dark_gray)
call s:highlight('PmenuThumb', s:white, s:gray)

call s:highlight('Folded', s:gray, 'NONE')
call s:highlight('FoldColumn', s:dark_gray, 'NONE')
call s:highlight('SignColumn', s:dark_gray, 'NONE')

call s:highlight('WildMenu', s:white, s:gray)
call s:highlight('StatusLine', s:white, s:dark_gray, 'cterm=NONE gui=NONE')
call s:highlight('StatusLineNC', s:gray, s:dark_gray, 'cterm=NONE gui=NONE')
call s:highlight('TabLine', s:white, s:dark_gray, 'cterm=NONE gui=NONE')
call s:highlight('TabLineSel', s:white, s:black, 'cterm=NONE gui=NONE')
hi! link TabLineFill Tabline
call s:highlight('VertSplit', s:dark_gray, s:dark_gray, 'cterm=NONE gui=NONE')

call s:highlight('Todo', s:white, s:blue)
call s:highlight('DiffAdd', s:green, 'NONE')
call s:highlight('DiffChange', s:yellow, 'NONE')
call s:highlight('DiffDelete', s:magenta, 'NONE')
call s:highlight('DiffText', s:blue, 'NONE')
hi! link diffAdded DiffAdd
hi! link diffRemoved DiffDelete

call s:highlight('Error', s:white, s:red, 'cterm=bold gui=bold')
call s:highlight('ErrorMsg', s:red, 'NONE')
call s:highlight('WarningMsg', s:red, '')
call s:highlight('Question', s:yellow, '')

call s:highlight('MoreMsg', s:gray, '', 'cterm=bold gui=bold')
call s:highlight('ModeMsg', s:gray, '', 'cterm=bold gui=bold')

" HTML
call s:highlight('htmlLink', s:blue, '', 'cterm=underline gui=underline')
call s:highlight('htmlStatement', s:blue, '')
call s:highlight('htmlSpecialTagName', s:blue, '')
