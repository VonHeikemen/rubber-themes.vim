" ============================================================================
" rubber-enhanced
" 
" URL: https://github.com/VonHeikemen/rubber-themes.vim
" Author: Heiker
" License: MIT
" ============================================================================

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="rubber-enhanced"

" ============================================================================ "
" ===                                COLORS                                === "
" ============================================================================ "

let s:black          = {"gui": "#2F343F", "cterm": "236"}
let s:blue           = {"gui": "#89C4F4", "cterm": "117"}
let s:cyan           = {"gui": "#50C6D8", "cterm": "80" }
let s:green          = {"gui": "#87D37C", "cterm": "114"}
let s:magenta        = {"gui": "#DDA0DD", "cterm": "182"}
let s:red            = {"gui": "#FC8680", "cterm": "210"}
let s:yellow         = {"gui": "#F2CA27", "cterm": "220"}
let s:white          = {"gui": "#DADFE1", "cterm": "253"}

let s:bright_black   = {"gui": "#5F6672", "cterm": "242"}
let s:bright_white   = {"gui": "#D4D7D9", "cterm": "188"}

let s:dark_gray      = {"gui": "#737C8C", "cterm": "8"  }
let s:gray           = {"gui": "#8893A6", "cterm": "103"} 
let s:wild_red       = {"gui": "#DF334A", "cterm": "167"}
let s:dark_blue      = {"gui": "#3B4049", "cterm": "238"}
let s:darkness       = {"gui": "#3B4252", "cterm": "238"}


" Constants
let s:none       = {"gui": "NONE", "cterm": "NONE"}
let s:foreground = s:white
let s:comment    = s:red
let s:constant   = s:magenta
let s:storage    = s:blue
let s:string     = s:green
let s:special    = s:dark_gray
let s:error      = s:wild_red


" Highlight utility function
" https://github.com/noahfrederick/vim-hemisu/
" Usage: call s:h("", {"fg": s:none, "bg": s:none})
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction


" ============================================================================ "
" ===                               BASE UI                                === "
" ============================================================================ "

call s:h("Normal",       {"fg": s:foreground,   "bg": s:none        })
call s:h("Cursor",       {"fg": s:black,        "bg": s:white       })
call s:h("CursorLine",   {"fg": s:none,         "bg": s:dark_blue   })
call s:h("CursorLineNr", {"fg": s:none,         "bg": s:none        })
call s:h("ColorColumn",  {"fg": s:none,         "bg": s:bright_black})
call s:h("LineNr",       {"fg": s:dark_gray,    "bg": s:none        })
call s:h("EndOfBuffer",  {"fg": s:dark_gray,    "bg": s:none        })
call s:h("VertSplit",    {"fg": s:darkness,     "bg": s:none        })
call s:h("Folded",       {"fg": s:bright_black, "bg": s:none        })
call s:h("FoldColumn",   {"fg": s:bright_black, "bg": s:none        })
call s:h("PMenu",        {"fg": s:none,         "bg": s:dark_blue   })
call s:h("PMenuSel",     {"fg": s:none,         "bg": s:bright_black})
call s:h("TabLine",      {"fg": s:none,         "bg": s:darkness    })
call s:h("TabLineFill",  {"fg": s:none,         "bg": s:darkness    })
call s:h("TabLineSel",   {"fg": s:bright_white, "bg": s:black       })
call s:h("StatusLine",   {"fg": s:bright_white, "bg": s:darkness    })
call s:h("StatusLineNC", {"fg": s:dark_gray,    "bg": s:darkness    })
call s:h("WildMenu",     {"fg": s:black,        "bg": s:yellow      })
call s:h("MatchParen",   {"fg": s:black,        "bg": s:dark_gray   })
call s:h("Visual",       {"fg": s:black,        "bg": s:gray        })
call s:h("Search",       {"fg": s:black,        "bg": s:yellow      })
call s:h("IncSearch",    {"fg": s:black,        "bg": s:yellow      })


" ============================================================================ "
" ===                             BASE SYNTAX                              === "
" ============================================================================ "

call s:h("Comment",        {"fg": s:comment,  "bg": s:none })
call s:h("String",         {"fg": s:string,   "bg": s:none })
call s:h("Character",      {"fg": s:constant, "bg": s:none })
call s:h("Number",         {"fg": s:constant, "bg": s:none })
call s:h("Boolean",        {"fg": s:constant, "bg": s:none })
call s:h("Float",          {"fg": s:constant, "bg": s:none })
call s:h("Function",       {"fg": s:storage,  "bg": s:none })
call s:h("Special",        {"fg": s:special,  "bg": s:none })
call s:h("SpecialChar",    {"fg": s:special,  "bg": s:none })
call s:h("Error",          {"fg": s:none,     "bg": s:error})

call s:h("Constant",       {"fg": s:none,     "bg": s:none })
call s:h("Statement",      {"fg": s:none,     "bg": s:none })
call s:h("Conditional",    {"fg": s:none,     "bg": s:none })
call s:h("Exception",      {"fg": s:none,     "bg": s:none })
call s:h("Identifier",     {"fg": s:none,     "bg": s:none })
call s:h("Type",           {"fg": s:none,     "bg": s:none })
call s:h("Repeat",         {"fg": s:none,     "bg": s:none })
call s:h("Label",          {"fg": s:none,     "bg": s:none })
call s:h("Operator",       {"fg": s:none,     "bg": s:none })
call s:h("Keyword",        {"fg": s:none,     "bg": s:none })
call s:h("Delimiter",      {"fg": s:none,     "bg": s:none })
call s:h("Tag",            {"fg": s:none,     "bg": s:none })
call s:h("SpecialComment", {"fg": s:none,     "bg": s:none })
call s:h("Debug",          {"fg": s:none,     "bg": s:none })
call s:h("PreProc",        {"fg": s:none,     "bg": s:none })
call s:h("Include",        {"fg": s:none,     "bg": s:none })
call s:h("Define",         {"fg": s:none,     "bg": s:none })
call s:h("Macro",          {"fg": s:none,     "bg": s:none })
call s:h("PreCondit",      {"fg": s:none,     "bg": s:none })
call s:h("StorageClass",   {"fg": s:none,     "bg": s:none })
call s:h("Structure",      {"fg": s:none,     "bg": s:none })
call s:h("Typedef",        {"fg": s:none,     "bg": s:none })
call s:h("Title",          {"fg": s:none,     "bg": s:none })
call s:h("Todo",           {"fg": s:none,     "bg": s:none })


" ============================================================================ "
" ===                                 EXTRA                                === "
" ============================================================================ "

" Language: Diff
" Syntax: built-in
call s:h("DiffAdd",    {"fg": s:black,      "bg": s:green})
call s:h("DiffChange", {"fg": s:black,      "bg": s:cyan })
call s:h("DiffDelete", {"fg": s:black,      "bg": s:red  })
call s:h("DiffText",   {"fg": s:black,      "bg": s:cyan })


" UI: Netrw
hi! link Directory     Function
hi! link netrwDir      Function
hi! link netrwHelpCmd  Special


" Plugin: NERDTree
hi! link NERDTreeDir       Function
hi! link NERDTreeDirSlash  Function
hi! link NERDTreeUp        Function
hi! link NERDTreeOpenable  Function
hi! link NERDTreeClosable  Function
hi! link NERDTreeToggleOn  Boolean
hi! link NERDTreeToggleOff Boolean
hi! link NERDTreeHelp      Comment


" Language: HTML
" Syntax: built-in
hi! link htmlTag            Special
hi! link htmlEndTag         Special
hi! link htmlTagName        Function
hi! link htmlSpecialTagName Function
hi! link htmlArg            Normal


" Language: CSS
" Syntax: built-in
hi! link cssTagName           Function
hi! link cssColor             Number
hi! link cssVendor            Normal
hi! link cssBraces            Normal
hi! link cssSelectorOp        Normal
hi! link cssSelectorOp2       Normal
hi! link cssIdentifier        Normal
hi! link cssClassName         Normal
hi! link cssClassNameDot      Normal
hi! link cssVendor            Normal
hi! link cssImportant         Normal
hi! link cssAttributeSelector Normal


" Language: PHP
" Syntax: built-in
hi! link phpNullValue Boolean
hi! link phpParent    Normal
hi! link phpClasses   Normal


" Language: Javascript
" Syntax: built-in
hi! link javaScriptNumber   Number
hi! link javaScriptNull     Number
hi! link javaScriptBraces   Normal
hi! link javaScriptFunction Normal


" Language: Javascript
" Syntax: "pangloss/vim-javascript"
hi! link jsFunctionKey Function
hi! link jsUndefined   Number
hi! link jsNull        Number
hi! link jsSuper       Normal
hi! link jsThis        Normal
hi! link jsArguments   Normal


" Language: JSX
" Syntax: "maxmellon/vim-jsx-pretty"
hi! link jsxTagName       Function
hi! link jsxComponentName Function
hi! link jsxPunct         Special
hi! link jsxCloseString   Special
hi! link jsxEqual         Special
hi! link jsxAttrib        Normal


" Language: Twig
" Syntax: "lumiliet/vim-twig" 
hi! link twigString String


" ============================================================================ "
" ===                             TERM COLORS                              === "
" ============================================================================ "

if has("nvim")
  let g:terminal_color_foreground = s:foreground.gui
  let g:terminal_color_background = s:black.gui
 
  " black 
  let g:terminal_color_0          = s:black.gui
  let g:terminal_color_8          = s:bright_black.gui
  
  " red
  let g:terminal_color_1          = s:red.gui
  let g:terminal_color_9          = s:red.gui 
  
  " green
  let g:terminal_color_2          = s:green.gui
  let g:terminal_color_10         = s:green.gui
  
  " yellow
  let g:terminal_color_3          = s:yellow.gui
  let g:terminal_color_11         = s:yellow.gui
  
  " blue
  let g:terminal_color_4          = s:blue.gui
  let g:terminal_color_12         = s:blue.gui
  
  " magenta
  let g:terminal_color_5          = s:magenta.gui
  let g:terminal_color_13         = s:magenta.gui
  
  " cyan
  let g:terminal_color_6          = s:cyan.gui
  let g:terminal_color_14         = s:cyan.gui
  
  " white
  let g:terminal_color_7          = s:white.gui
  let g:terminal_color_15         = s:bright_white.gui
else
  let g:terminal_ansi_colors = [
    \ s:black.gui,        s:red.gui,     s:green.gui, s:yellow.gui,
    \ s:blue.gui,         s:magenta.gui, s:cyan.gui,  s:white.gui,
    \ s:bright_black.gui, s:red.gui,     s:green.gui, s:yellow.gui,
    \ s:blue.gui,         s:magenta.gui, s:cyan.gui,  s:bright_white.gui
    \ ] 
endif

