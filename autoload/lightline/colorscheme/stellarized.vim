if lightline#colorscheme#background() ==# 'light'
  let s:gry0 = '#fcf1e4'
  let s:gry1 = '#e4dacc'
  let s:gry3 = '#616170'
  let s:red_ = '#ea5a44'
  let s:orng = '#d07018'
  let s:gren = '#4d991b'
  let s:blue = '#008beb'
else
  let s:gry0 = '#282835'
  let s:gry1 = '#3a3b47'
  let s:gry3 = '#aba194'
  let s:red_ = '#c87361'
  let s:orng = '#b87c4e'
  let s:gren = '#6d9353'
  let s:blue = '#5f87b7'
endif

let s:p = { 'normal' : {} , 'inactive': {} , 'insert'  : {} , 
          \ 'replace': {} , 'visual'  : {} , 'tabline' : {} }

let s:p.normal.left     = [[ s:gry0, s:gry3 ], [ s:gry3, s:gry1 ]]
let s:p.normal.middle   = [[ s:gry3, s:gry1 ]]
let s:p.normal.right    = [[ s:gry0, s:gry3 ], [ s:gry0, s:gry3 ]]

let s:p.inactive.left   = copy(s:p.normal.middle)
let s:p.inactive.middle = copy(s:p.normal.middle)
let s:p.inactive.right  = copy(s:p.normal.middle)

let s:p.insert.left     = [[ s:gry0, s:gren ]]
let s:p.insert.right    = [[ s:gry0, s:gren ], [ s:gry0, s:gren ]]

let s:p.visual.left     = [[ s:gry0, s:blue ]]
let s:p.visual.right    = [[ s:gry0, s:blue ], [ s:gry0, s:blue ]]

let s:p.replace.left    = [[ s:gry0, s:red_ ]]
let s:p.replace.right   = [[ s:gry0, s:red_ ], [ s:gry0, s:red_ ]]

let s:p.tabline.left    = copy(s:p.normal.middle)
let s:p.tabline.tabsel  = [[ s:gry0, s:gry3 ]]
let s:p.tabline.right   = copy(s:p.normal.middle)

let s:p.normal.error    = [[ s:red_, s:gry0 ]]
let s:p.normal.warning  = [[ s:orng, s:gry0 ]]

let g:lightline#colorscheme#stellarized#palette =
  \ lightline#colorscheme#fill(s:p)
