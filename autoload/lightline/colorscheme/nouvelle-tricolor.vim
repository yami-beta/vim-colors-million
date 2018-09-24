scriptencoding utf-8

let s:black     = [ '#161821', '234' ]
let s:white     = [ '#c0c6c9', '251' ]
let s:red       = [ '#c51b13', '160' ]
let s:blue      = [ '#126ef5', '27' ]
let s:yellow    = [ '#dbab29', '184' ]
let s:green     = [ '#418353', '29' ]
let s:magenta   = [ '#f73e90', '198' ]
let s:cyan      = [ '#23a7b9', '37' ]
let s:gray      = [ '#7b7c7d', '244' ]
let s:dark_gray = [ '#454341', '238' ]
let s:dark_blue = [ '#1f4c86', '24' ]

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:white, s:blue ], [ s:white, s:dark_gray ] ]
let s:p.normal.right    = [ [ s:dark_gray, s:gray ], [ s:gray, s:dark_gray ] ]
let s:p.inactive.right  = [ [ s:black, s:dark_gray ], [ s:gray, s:black ] ]
let s:p.inactive.left   = [ [ s:gray, s:black ], [ s:gray, s:black ] ]
let s:p.insert.left     = [ [ s:white, s:magenta ], [ s:white, s:dark_gray ] ]
let s:p.visual.left     = [ [ s:white, s:dark_blue ], [ s:white, s:dark_gray ] ]
let s:p.replace.left    = [ [ s:black, s:yellow ], [ s:white, s:dark_gray ] ]
let s:p.normal.middle   = [ [ s:gray, s:black ] ]
let s:p.inactive.middle = [ [ s:gray, s:black ] ]
let s:p.tabline.left    = [ [ s:white, s:dark_gray ] ]
let s:p.tabline.tabsel  = [ [ s:white, s:black ] ]
let s:p.tabline.middle  = [ [ s:white, s:dark_gray ] ]
let s:p.tabline.right   = copy(s:p.tabline.tabsel)
let s:p.normal.error    = [ [ s:white, s:red ] ]
let s:p.normal.warning  = [ [ s:black, s:yellow ] ]

let g:lightline#colorscheme#nouvelle_tricolor#palette = lightline#colorscheme#flatten(s:p)
