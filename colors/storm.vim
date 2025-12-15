" Storm vim colour scheme
" Zane Godden 1694
" ----------------------------

" Initial_setup: {{{
" -------------
if version > 580
   hi clear
   if exists ("syntax_on")
      syntax reset
   endif
endif

set background=dark
set t_Co=256

let g:colors_name="Storm"

hi Normal ctermfg=103 ctermbg=232 cterm=NONE
hi CursorLineNr ctermfg=105 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=237 ctermbg=234 cterm=NONE
hi SignColumn ctermfg=237 ctermbg=234 cterm=NONE
hi VertSplit ctermfg=236 ctermbg=234 cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=16 cterm=NONE
hi Comment ctermfg=239 ctermbg=NONE cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE
hi Error ctermfg=189 ctermbg=234 cterm=bold,reverse
hi ErrorMsg ctermfg=234 ctermbg=189 cterm=bold
hi Folded ctermfg=237 ctermbg=233 cterm=NONE
hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=NONE ctermbg=239 cterm=bold,underline
hi NonText ctermfg=239 ctermbg=NONE cterm=NONE
hi Pmenu ctermfg=189 ctermbg=237 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=237 cterm=NONE
hi PmenuSel ctermfg=237 ctermbg=109 cterm=bold
hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
hi PmenuKind ctermfg=189 ctermbg=237 cterm=NONE
hi PmenuKindSel ctermfg=189 ctermbg=109 cterm=NONE
hi PmenuExtra ctermfg=237 ctermbg=237 cterm=NONE
hi PmenuExtraSel ctermfg=236 ctermbg=109 cterm=NONE
hi SpecialKey ctermfg=237 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=239 ctermbg=189 cterm=bold,reverse
hi StatusLineNC ctermfg=237 ctermbg=237 cterm=reverse
hi TabLine ctermfg=237 ctermbg=237 cterm=NONE
hi TabLineFill ctermfg=189 ctermbg=237 cterm=NONE
hi TabLineSel ctermfg=188 ctermbg=234 cterm=bold
hi ToolbarButton ctermfg=188 ctermbg=236 cterm=bold
hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual ctermfg=234 ctermbg=109 cterm=NONE
hi WildMenu ctermfg=109 ctermbg=239 cterm=bold
hi EndOfBuffer ctermfg=239 ctermbg=NONE cterm=NONE
hi Conceal ctermfg=109 ctermbg=NONE cterm=NONE
hi Cursor ctermfg=234 ctermbg=188 cterm=NONE
hi DiffAdd ctermfg=103 ctermbg=234 cterm=reverse
hi DiffChange ctermfg=107 ctermbg=234 cterm=reverse
hi DiffDelete ctermfg=189 ctermbg=234 cterm=reverse
hi DiffText ctermfg=105 ctermbg=234 cterm=reverse
hi Directory ctermfg=103 ctermbg=NONE cterm=bold
hi IncSearch ctermfg=208 ctermbg=234 cterm=reverse
hi ModeMsg ctermfg=105 ctermbg=NONE cterm=bold
hi MoreMsg ctermfg=105 ctermbg=NONE cterm=bold
hi Question ctermfg=208 ctermbg=NONE cterm=bold
hi Search ctermfg=100 ctermbg=234 cterm=reverse
hi QuickFixLine ctermfg=107 ctermbg=234 cterm=reverse
hi SpellBad ctermfg=189 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=109 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=107 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=175 ctermbg=NONE cterm=underline
hi Title ctermfg=103 ctermbg=NONE cterm=bold
hi WarningMsg ctermfg=189 ctermbg=NONE cterm=bold
hi Boolean ctermfg=175 ctermbg=NONE cterm=NONE
hi Character ctermfg=175 ctermbg=NONE cterm=NONE
hi Conditional ctermfg=189 ctermbg=NONE cterm=NONE
hi Constant ctermfg=171 ctermbg=NONE cterm=NONE
hi Define ctermfg=171 ctermbg=NONE cterm=NONE
hi Debug ctermfg=171 ctermbg=NONE cterm=NONE
hi Delimiter ctermfg=208 ctermbg=NONE cterm=NONE
hi Error ctermfg=189 ctermbg=234 cterm=bold,reverse
hi Exception ctermfg=189 ctermbg=NONE cterm=NONE
hi Float ctermfg=175 ctermbg=NONE cterm=NONE
hi Function ctermfg=103 ctermbg=NONE cterm=bold
hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
hi Ignore ctermfg=fg ctermbg=NONE cterm=NONE
hi Include ctermfg=250 ctermbg=NONE cterm=NONE
hi Keyword ctermfg=189 ctermbg=NONE cterm=NONE
hi Label ctermfg=171 ctermbg=233 cterm=NONE
hi Macro ctermfg=171 ctermbg=233 cterm=NONE
hi Number ctermfg=175 ctermbg=NONE cterm=NONE
hi Operator ctermfg=107 ctermbg=NONE cterm=NONE
hi PreCondit ctermfg=171 ctermbg=233 cterm=bold
hi PreProc ctermfg=171 ctermbg=233 cterm=NONE
hi Repeat ctermfg=189 ctermbg=NONE cterm=NONE
hi SpecialChar ctermfg=189 ctermbg=NONE cterm=NONE
hi SpecialComment ctermfg=189 ctermbg=NONE cterm=NONE
hi Statement ctermfg=189 ctermbg=NONE cterm=NONE
hi StorageClass ctermfg=208 ctermbg=NONE cterm=NONE
hi Special ctermfg=208 ctermbg=NONE cterm=NONE
hi String ctermfg=103 ctermbg=NONE cterm=NONE
hi Structure ctermfg=107 ctermbg=NONE cterm=NONE
hi Todo ctermfg=fg ctermbg=234 cterm=bold
hi Type ctermfg=105 ctermbg=NONE cterm=NONE
hi Typedef ctermfg=105 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=109 ctermbg=NONE cterm=underline
hi CursorIM ctermfg=234 ctermbg=188 cterm=NONE
