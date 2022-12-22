" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
" NeoVIM THEME & TUI ================================================
Plug 'mkitt/tabline.vim'                "Tabs
Plug 'morhetz/gruvbox'                  "Nice dark theme
Plug 'vim-airline/vim-airline'          "Simple statusline
" Plug 'Lokaltog/vim-powerline'
" CODE HIGHLIGHTINGS ================================================
Plug 'sheerun/vim-polyglot'
Plug 'nathanaelkane/vim-indent-guides'  "Indentation linses
Plug 'ap/vim-css-color'                 "Colored Hexcodes :) #987654
" CODE AUTOCOMPLETITION =============================================
"Plug 'lifepillar/vim-mucomplete'
"Plug 'davidhalter/jedi-vim'             "Python autocompletition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'ycm-core/YouCompleteMe'
" FILE MANAGER ======================================================
" Uporabljam coc-explorer
"Plug 'scrooloose/nerdtree'              "File manager
"Plug 'Nopik/vim-nerdtree-direnter'      "dir open bug fix
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'kevinhwang91/rnvimr'
"Plug 'rafaqz/ranger.vim'
" Plug 'vifm/vifm.vim'
" MARKDOWN PLUGINS ==================================================
Plug 'plasticboy/vim-markdown'
Plug 'dhruvasagar/vim-table-mode'
Plug 'majutsushi/tagbar'                "Side menu of tags
Plug 'sotte/presenting.vim'             "Presentation slides from markdown
Plug 'junegunn/limelight.vim'           "Highlite only the paragraph,prezentacija
Plug 'junegunn/goyo.vim'                "Center the text [ = ]      ,prezentacija
" OTHER UTILS =======================================================
Plug 'tpope/vim-obsession'              "Save/Load Vim session with files
Plug 'tpope/vim-fugitive'               "GIT plugin
Plug 'lambdalisue/suda.vim'             "read & write with sudo privilages
"Plug 'Shougo/unite.vim'                "TUI for others funtionalaties
"Plug 'vimwiki/vimwiki'                 "vim WIKI - module for Wiki page
" GAMES =============================================================
Plug 'johngrib/vim-game-snake'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" Sane vim defaults for ArchLabs
scriptencoding utf8
" Arch defaults
runtime! archlinux.vim
" system clipboard (requires +clipboard)
set clipboard^=unnamed,unnamedplus
" additional settings
set modeline           " enable vim modelines
set hlsearch           " highlight search items
set incsearch          " searches are performed as you type
set ignorecase         " search case-insensitive searching
set number             " enable line numbers
set relativenumber
set confirm            " ask confirmation like save before quit.
set wildmenu           " Tab completion menu when using command mode
set expandtab          " Tab key inserts spaces not tabs
set softtabstop=2      " spaces to enter for each tab
set shiftwidth=2       " amount of spaces for indentation
set shortmess+=aAcIws  " Hide or shorten certain messages
" Change Color when entering Insert Mode
autocmd InsertEnter * set cursorline
autocmd InsertLeave * set nocursorline
" syntax highlighting
syntax enable
"au ColorScheme * hi Normal ctermbg=none guibg=none
"au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red
set termguicolors
set t_Co=256
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
highlight bCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-bCursor
"set guicursor+=i:ver100-iCursor
"set guicursor+=n-v-c:blinkon0
"set guicursor+=i:blinkwait10

"#####################################
"  ⎁  AirLine
"#####################################
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


set linebreak breakindent
set list listchars=tab:>>,trail:~

let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
"#####################################
"    NeoVIM
"#####################################
let g:mapleader = "\<Space>"
noremap <leader>s :source ~/.config/nvim/init.vim<CR>

"--save open close ---
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>

"--save session ---
"nnoremap <C-S> :mksession! ~/.config/nvim/david_session.sav<CR>

" ------ commands ------
command! D Explore
command! R call <SID>ranger()
command! Q call <SID>quitbuffer()
command! -nargs=1 B :call <SID>bufferselect("<args>")
command! W execute 'silent w !sudo tee % >/dev/null' | edit!

" ------ basic maps ------
" open ranger as a file chooser using the function below
"nnoremap <leader>f :TabVifm<CR>
"nerdtree- - - - - - - - - - -
map <leader><CR> :CocCommand explorer<CR>
"map <leader>w :NERDTreeToggle<CR>
"nnoremap cd :cd %:p:h<CR>

" match string to switch buffer
" nnoremap <Leader>b :let b:buf = input('Match: ')<Bar>call <SID>bufferselect(b:buf)<CR>

"#####################################
"# PLUGIN SETTINGS                   #
"#####################################

"======================================================================
"   GIT
"======================================================================
"instaliraj git-fugitive
  map <leader>gc :Gcommit -a<CR>==gi
  map <leader>gs :Gstatus<CR>
  map <leader>gu :Gpush<CR> :Gstatus<CR> :sleep 3<CR> :q<CR>
  map <leader>ga :Gpull<CR> :Gpush<CR> :Gstatus<CR> :sleep 3<CR> :q<CR>
  nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

" PANDOC
  noremap ,s :!panzer -t revealjs -s -o %:p:r.html %:p -V revealjs-url=http://lab.hakim.se/reveal-js
"  noremap <leader>d :!pandoc --pdf-engine=xelatex % -o %:p:r.pdf
"#####################################
"  AUTOCOMPLETITION
"#####################################
"imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"======================================================================
" MUCOMPLETE
"======================================================================
"let g:mucomplete#enable_auto_at_startup = 1
"set completeopt+=menuone
"set completeopt+=noinsert
"======================================================================
"   YouCompleteMe
"======================================================
"...hm, nič mi ni bilo potrebno nastavit... vse je delalo iz prve...
let g:ycm_semantic_triggers = {
  \   'cpp': [ 're!.' ],
  \   'ino': [ 're!.' ],
  \   'c++': [ 're!.' ]
  \ }
let g:ycm_filetype_blacklist={'notes': 1, 'unite': 1, 'tagbar': 1, 'pandoc': 1, 'qf': 1, 'vimwiki': 1, 'text': 1, 'infolog': 1, 'mail': 1}
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 0
"======================================================================
"   Conquer Of Completition - COC
"======================================================================
"EXTENSIONS
"if you want to install an extension do:
":CocInstall _extension_name
"Installed extensions
"  coc-pair :CocInstall coc-pairs
"  coc-clangd
"  coc-cmake
"  coc-snippets
"coc-python
"coc-html
"coc-dictionary
"
set hidden                          " if hidden is not set, TextEdit might fail.
set nobackup                        " Some servers have issues with backup files, see #649
set nowritebackup
set cmdheight=2                     " Better display for messages
set updatetime=300                  " You will have bad experience for diagnostic messages when it's default 4000.
set shortmess+=c                    " don't give |ins-completion-menu| messages.
set signcolumn=yes                  " always show signcolumns
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()                 " Use <c-space> to trigger completion.

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
autocmd CursorHold * silent call CocActionAsync('highlight')    " Highlight symbol under cursor on CursorHold
nmap <leader>rn :call CocAction('rename')<CR>
" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
" function! s:show_documentation()
  " if (index(['vim','help'], &filetype) >= 0)
    " execute 'h '.expand('<cword>')
  " else
    " call CocAction('doHover')
  " endif
" endfunction
"coc-snippets-------------------------------------
  let g:coc_snippet_next = '<c-n>'
  let g:coc_snippet_prev = '<c-p>'
  "======================================================================
  "    FUZZY FILE SEARCH
  "======================================================================
    "   - hitro iskanje filov
  let $FZF_DEFAULT_COMMAND = "find /home/david/ . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null"
    "map ff :FZF<CR>
    let g:fzf_action = {
      \ 'enter': 'edit',
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }
    function! Fuzzy_Files()
        let g:fzf_action = {
            \ 'enter': 'tab split',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
        :Files
    endfunction
    map ff :call Fuzzy_Files()<CR>
    command! -bang -nargs=* FToC
      \ call fzf#vim#grep(
      \   'grep --with-filename --color=always --line-number ^#'.shellescape(<q-args>).' '.shellescape(expand('%')) , 1,
      \   fzf#vim#with_preview(), <bang>0)
    function! Fuzzy_ToC()
        let g:fzf_action = {
            \ 'enter': 'edit',
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
        :lcd %:p:h
        :FToC
    endfunction
    map <leader>ft :call Fuzzy_ToC()<CR>
    command! ReadCppFile call fzf#run({
        \ 'source':     'find ./',
        \  'sink':      ':read !snip-md-code.sh '})
  "======================================================================
  "    TAGBAR
  "======================================================================
  "   - dodatek za programiranje
  "   - v desnem oknu odpre spremenljivke in funkcije
  "   - mogoče bi se dalo dobiti samo s fzf določene vrstice
  "   - https://github.com/junegunn/fzf.vim/issues/374
    "nmap <leader>t :TagbarToggle<CR>
    nnoremap <leader>e :TagbarOpenAutoClose<CR>
    let g:tagbar_autofocus = 1
    let g:tagbar_show_linenumbers = 2
  "tagbar markdown language...................................
  " Add support for markdown files in tagbar.
    let g:tagbar_type_markdown = {
        \ 'ctagstype': 'markdown',
        \ 'ctagsbin' : '/home/david/bin/markdown/markdown2ctags.py',
        \ 'ctagsargs' : '-f - --sort=no --sro=»',
        \ 'kinds' : [
            \ 's:sections',
            \ 'i:images'
        \ ],
        \ 'sro' : '»',
        \ 'kind2scope' : {
            \ 's' : 'section',
        \ },
        \ 'sort': 0,
    \ }
  "======================================================================
  "    TABLEMODE
  "======================================================================
    let g:table_mode_corner="|"
  "  call TableModeEnable
  "  map <leader>tm :TableModeToggle<CR>
  "======================================================================
  "  ✅ SPELL CHECKING
  "======================================================================
  "SPELL CHECK

  autocmd FileType markdown setlocal spell spelllang=sl,en
    map <F18> :set spell spelllang=
    map <C-F18> :set nospell<CR>
  "-- next spell error
    nmap sn ]s
    nmap sp [s
  "-- spell sugestions
  "  nmap ss z=
  " Find prewieous error and fix it like "I feel lucky"
    nnoremap ss :normal! ms[s1z=`s<CR>

"#####################################
"   NeoVIM
"#####################################
let g:nvimWiki="/home/david/Files/GitHub_noSync/davidrihtarsic.github.io/Linux/LinuxWiki"
let g:homeWiki="/home/david/Files/Personal/HomeWiki/HomeWiki"
nmap <leader>ww :execute "call OpenWikiPage('" . g:nvimWiki . "')"<CR>:lcd %:p:h<CR>
nmap <leader>wh :execute "call OpenWikiPage('" . g:homeWiki . "')"<CR>:lcd %:p:h<CR>

function! OpenWikiPage(link)
  if filereadable(a:link . ".md")
    echo "SpecificFile exists"
    let g:l_file = a:link . ".md"
    echom g:l_file
    execute "edit " . a:link . ".md"
  else
    echo "File doesn't exist - try to make new one. <leader>wn"
    :tabclose
  endif
endfunction

"nmap <CR> wbyw:tabnew<CR>:call OpenWikiPage('<C-r>"')<CR>
function! OpenFile()
  let file_name=expand("<cfile>")
  let ext=expand("<cfile>:e")
  if ext == "pdf"
    execute ":silent !(zathura " . file_name ." &)"
  elseif ext=="png"||ext=="gif"||ext=="jpg"||ext=="svg"
    execute ":!sxiv " . file_name ." &)"
  elseif ext=="html"||ext=="htm"||ext=="com"
    execute ":!$BROWSER" . file_name ." &)"
  else
    execute ":tabnew " . file_name
  endif
endfunction

function! Test()
  let a = "b"
  if a=="a" || a=="b"
    echo "true"
  else
    echo "false"
  endif
endfunction

nnoremap gf :execute "call OpenFile()"<CR>
nmap <CR> :wincmd gf<CR>
nmap <BS> :bprev<CR>
nmap <leader>wn wbyw:tabnew<CR>:w <C-r>".md<CR>

"======================================================================
"   NAVIGATION
"======================================================================
" change windows with ctrl+(hjkl)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-e> :buffers<CR>:buffer<Space>

" alt defaults
nnoremap 0 ^
nnoremap Y y$
inoremap <c-l> <ESC>$A
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap <Tab> ==1j

" re-visual text after changing indent
vnoremap > >gv
vnoremap < <gv

" toggle line numbers, nn (no number)
nnoremap <silent> <Leader>nn :set number!

" gj/k but preserve numbered jumps ie: 12j or 45k
nmap <buffer><silent><expr>j v:count ? 'j' : 'gj'
nmap <buffer><silent><expr>k v:count ? 'k' : 'gk'

" open a terminal in $PWD
" nnoremap <silent> <Leader>tt :terminal<CR>

" tab control
nnoremap <silent> <M-h> :tabmove -1<CR>
nnoremap <silent> <M-l> :tabmove +1<CR>
nnoremap <silent> <C-t> :tabnew<CR>
"nnoremap <Leader>tc :tabclose<CR>
" close current buffer and/or tab
nnoremap <silent> <Leader>q :B<CR>:silent tabclose<CR>gT
"nnoremap <silent> <Leader>tl :execute "tabn ".g:lasttab<CR>

" open a new tab in the current directory with netrw
nnoremap <silent> <Leader>- :tabedit <C-R>=expand("%:p:h")<CR><CR>

nnoremap <M-1> 1gt
nnoremap <M-2> 2gt
nnoremap <M-3> 3gt
nnoremap <M-4> 4gt
nnoremap <M-5> 5gt
nnoremap <M-6> 6gt
nnoremap <M-7> 7gt
nnoremap <M-8> 8gt
nnoremap <M-9> 9gt

"======================================================================
"    splitting windows
"======================================================================
nnoremap _ <C-W>s<C-W><Down>
nnoremap <Bar> <C-W>v<C-W><Right>
" resize vertical
nnoremap <C-H> :vertical resize -10<CR>
nnoremap <C-L> :vertical resize +10<CR>
nnoremap <C-J> :resize -4<CR>
nnoremap <C-K> :resize +4<CR>
"======================================================================
"  Presentation of MARKDOWN documents
"======================================================================
" Raje uporabljam:
"   + Limelight in
"   + Goyo
"Osvetljevanje od poglavja do poglavja #Poglavje1 -> Pogla2
let g:limelight_bop = '^#\zs'
let g:limelight_eop = '\n^#\ze'
let g:limelight_default_coefficient = 0.8
nmap <F8> :Goyo <bar> Limelight!!<CR>
nmap gt : /^#<CR>zt
"======================================================================
"    MARKDOWN in EDITOR TEXTING BEHAVIOUR
"======================================================================
autocmd Filetype markdown,rmd nnoremap xxxyypVr-
autocmd Filetype markdown,rmd TableModeEnable
map ,n gg:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/markdown_header.sh<CR>gg
map ,w :r !	~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/timesheetNotes.sh<CR>
map ,h 0/<hh:mm><CR>"_c7l<CR><Esc>:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/insert_time.sh<CR>kJJ

inoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
vnoremap <Space><Tab> <Esc>/<++><Enter>"_c4l
map <Space><Tab> <Esc>/<++><Enter>"_c4l
"----------------------------------------------------------------------
"    
"----------------------------------------------------------------------
autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
autocmd Filetype markdown,rmd inoremap ,i **<++><Esc>F*i
autocmd Filetype markdown,rmd inoremap ,l [](<++>)<++><Esc>F[a
autocmd Filetype markdown,rmd inoremap ,p ```python<CR>```<CR><CR><esc>2kO
autocmd Filetype markdown,rmd inoremap ,v > ### NALOGA: 
autocmd Filetype markdown,rmd inoremap ,a <!--<CR><CR>--><ESC>ki

"auto wrapping selected text
vnoremap ,b bexi***<ESC>P2li*<ESC>
vnoremap ,s xi~~~<ESC>P2li~
vnoremap ,i xi**<ESC>P2li
vnoremap ( xi()<ESC>P2li
vnoremap " xi""<ESC>P2li
vnoremap ' xi''<ESC>P2li
vnoremap [ xi[]<ESC>P2li
vnoremap { xi{}<ESC>P2li
vnoremap < xi<><ESC>P2li
vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>
"----------------------------------------------------------------------
"  🖼 📅  VSAVLJANJE ELEMENTOV
"----------------------------------------------------------------------
"autocmd Filetype markdown,rmd inoremap ,n <Esc>gg:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/markdown_header.sh<CR>gg
autocmd Filetype markdown,rmd inoremap ,n <C-R>%<ESC>:s/^[0-9]*_*/# <CR><ESC>:s/_/ /g<CR><ESC><S-V>Uf.DA
autocmd Filetype markdown,rmd inoremap ,w <Esc>:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/timesheetNotes.sh<CR>
autocmd Filetype markdown,rmd inoremap ,d <CR><Esc>:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/insert_date.sh<CR>kJJi
autocmd Filetype markdown,rmd inoremap ,h <CR><Esc>:-1r ! ~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/insert_time.sh<CR>kJJi
autocmd Filetype markdown,rmd inoremap ,F <ESC>:r ! ~/bin/markdown/insert_image.sh<CR>0
autocmd Filetype markdown,rmd inoremap ,C <ESC>:ReadCppFile<CR><ESC>o
autocmd Filetype markdown,rmd inoremap ,E $$  $${#eq:<++>}<++><Esc>F$2hi
autocmd Filetype markdown,rmd inoremap ,T <ESC>:r ! ~/bin/markdown/insert_table.sh<CR>0{
autocmd Filetype markdown,rmd inoremap $$ $$<++><ESC>F$i
autocmd Filetype markdown,rmd inoremap ,Y <ESC>:r ! ~/.local/bin/snippets/html-youtube-iframe.sh<CR>0
"----------------------------------------------------------------------
"  🔖 VSTAVLJANJE REFERENC = CITIRANJE
"----------------------------------------------------------------------
inoremap ,x [@]<ESC>F@mt:w<CR>:r ! ~/bin/markdown/insert_bibtex_author.sh<CR>v$x`tpJxli
inoremap ,f [@]<ESC>F@mt:w<CR>:r !~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/insert_reference_figure.sh "%:p"<CR>v$x`tpJxli
inoremap ,e [@]<ESC>F@mt:w<CR>:r !~/Files/GitHub_noSync/ArchLabs/MyDotFiles/bin/markdown/insert_reference_equation.sh "%:p"<CR>v$x`tpJxli
inoremap ,t [@]<ESC>F@mt:w<CR>:r !~/Files/GitHub_noSync/ArchLinuxDR/home-david/bin/markdown/insert_reference_table.sh "%:p"<CR>v$x`tpJxli

autocmd Filetype markdown,rmd,md nnoremap <leader>wb <Esc>:split ~/Files/Work/UL-PeF/Articles/00-BibTex/bibtex.bib<CR><CR>
"----------------------------------------------------------------------
"   PDF CREATE
"----------------------------------------------------------------------
" pandoc --from markdown --template skripta --listings --pdf-engine=xelatex test.md -o index.pdf
" autocmd FileType markdown,rmd noremap <leader>m :silent !(cd %:p:h && pandoc "%:p:t" --to latex -o "%:p:r.pdf" --from markdown --template skripta -V lang=sl -M figPrefix="sl." -M eqnPrefix="en." -M listings -V listings-no-page-break -V urlcolor=violet -F pandoc-crossref --citeproc -V caption-justification=centering --bibliography=/home/david/Files/Work/UL-PeF/Articles/00-BibTex/bibtex.bib -V table-use-row-colors --number-sections --pdf-engine=pdflatex 2> %:p:h/.pandoc.md.log) & <CR><CR>
autocmd FileType markdown,rmd noremap <leader>S :!(pandoc-save-as -f %:p) <CR>
autocmd FileType markdown,rmd noremap <leader>d :silent !(pandoc -s "%:p" -o "%:p:t".docx) & <CR><CR>
autocmd FileType markdown,rmd noremap <leader>m :silent !(pandoc2notebook -l sl -f "%:p:t" &> .pan2note.log) & <CR><CR>
autocmd FileType markdown,rmd noremap <leader>M :silent !(pandoc2notebook -l sl -f "%:p:t" -t book &> .pan2note.log) & <CR><CR>
"autocmd FileType markdown,rmd noremap <leader>M :silent !(cd %:p:h && pandoc2notebook -f "%:p:t" -t book 2> %:p:h/.pandoc.md.log) & <CR><CR>
autocmd FileType markdown,rmd noremap <leader>l <Esc>:split %:p:r.log<CR><CR>
autocmd FileType markdown,rmd noremap <C-p> :!(zathura %:p:r.pdf & )<CR><CR>
autocmd BufRead markdown,*.md normal zR
" ------ enable additional features ------
" enable mouse
set mouse=a
if has('mouse_sgr')
    " sgr mouse is better but not every term supports it
    set ttymouse=sgr
endif

if $TERM !=? 'linux'
    set termguicolors

    " true colors in terminals (neovim doesn't need this)
    if !has('nvim') && !($TERM =~? 'xterm' || &term =~? 'xterm')
        let $TERM = 'xterm-256color'
        let &term = 'xterm-256color'
    endif

    if has('multi_byte') && $TERM !=? 'linux'
        set listchars=tab:»»,trail:•
        set fillchars=vert:┃ showbreak=↪
    endif
endif

" change cursor shape for different editing modes, neovim does this by default
if !has('nvim')
    if exists('$TMUX')
        let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
        let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
    else
        let &t_SI = "\e[6 q"
        let &t_SR = "\e[4 q"
        let &t_EI = "\e[2 q"
    endif
endif

" ------ autocmd ------
let g:lasttab = 1
augroup save_last_tab
    autocmd!
    autocmd TabLeave * let g:lasttab = tabpagenr()
augroup END

" Reload changes if file changed outside of vim requires autoread
augroup load_changed_file
    autocmd!
    autocmd FocusGained,BufEnter * if mode() !=? 'c' | checktime | endif
    autocmd FileChangedShellPost * echo "Changes loaded from source file"
augroup END

" when quitting a file, save the cursor position
augroup save_cursor_position
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

" when not running in a console or a terminal that doesn't support 256 colors
" enable cursorline in the currently active window and disable it in inactive ones
if $DISPLAY !=? '' && &t_Co == 256
    augroup cursorline
        autocmd!
        autocmd VimEnter,WinEnter,BufWinEnter * setlocal cursorline
        autocmd WinLeave * setlocal nocursorline
    augroup END
endif

" ------ adv maps ------


" strip trailing whitespace, ss (strip space)
nnoremap <silent> <Leader>ss
    \ :let b:_p = getpos(".") <Bar>
    \  let b:_s = (@/ != '') ? @/ : '' <Bar>
    \  %s/\s\+$//e <Bar>
    \  let @/ = b:_s <Bar>
    \  nohlsearch <Bar>
    \  unlet b:_s <Bar>
    \  call setpos('.', b:_p) <Bar>
    \  unlet b:_p <CR>

" global replace asdf
vnoremap <Leader>sw "hy
    \ :let b:sub = input('global replacement: ') <Bar>
    \ if b:sub !=? '' <Bar>
    \   let b:rep = substitute(getreg('h'), '/', '\\/', 'g') <Bar>
    \   execute '%s/'.b:rep."/".b:sub.'/g' <Bar>
    \   unlet b:sub b:rep <Bar>
    \ endif <CR>
nnoremap <Leader>sw
    \ :let b:sub = input('global replacement: ') <Bar>
    \ if b:sub !=? '' <Bar>
    \   execute "%s/<C-r><C-w>/".b:sub.'/g' <Bar>
    \   unlet b:sub <Bar>
    \ endif <CR>

" prompt before each replace
vnoremap <Leader>cw "hy
    \ :let b:sub = input('interactive replacement: ') <Bar>
    \ if b:sub !=? '' <Bar>
    \   let b:rep = substitute(getreg('h'), '/', '\\/', 'g') <Bar>
    \   execute '%s/'.b:rep.'/'.b:sub.'/gc' <Bar>
    \   unlet b:sub b:rep <Bar>
    \ endif <CR>

nnoremap <Leader>cw
    \ :let b:sub = input('interactive replacement: ') <Bar>
    \ if b:sub !=? '' <Bar>
    \   execute "%s/<C-r><C-w>/".b:sub.'/gc' <Bar>
    \   unlet b:sub <Bar>
    \ endif <CR>

" highlight long lines, ll (long lines)
"let w:longlines = matchadd('ColorColumn', '\%'.&textwidth.'v', &textwidth)
"nnoremap <silent> <Leader>ll
"    \ :if exists('w:longlines') <Bar>
"    \   silent! call matchdelete(w:longlines) <Bar>
"    \   echo 'Long line highlighting disabled'
"    \   <Bar> unlet w:longlines <Bar>
"    \ elseif &textwidth > 0 <Bar>
"    \   let w:longlines = matchadd('ColorColumn', '\%'.&textwidth.'v', &textwidth) <Bar>
"    \   echo 'Long line highlighting enabled'
"    \ <Bar> else <Bar>
"    \   let w:longlines = matchadd('ColorColumn', '\%80v', 81) <Bar>
"    \   echo 'Long line highlighting enabled'
"    \ <Bar> endif <CR>

" local keyword jump
nnoremap <Leader>fw
    \ [I:let b:jump = input('Go To: ') <Bar>
    \ if b:jump !=? '' <Bar>
    \   execute "normal! ".b:jump."[\t" <Bar>
    \   unlet b:jump <Bar>
    \ endif <CR>


" quit the current buffer and switch to the next
" without this vim will leave you on an empty buffer after quiting the current
function! <SID>quitbuffer() abort
    let l:bf = bufnr('%')
    let l:pb = bufnr('#')
    if buflisted(l:pb)
        buffer #
    else
        bnext
    endif
    if bufnr('%') == l:bf
        new
    endif
    if buflisted(l:bf)
        execute('bdelete! ' . l:bf)
    endif
endfunction

" switch active buffer based on pattern matching
" if more than one match is found then list the matches to choose from
function! <SID>bufferselect(pattern) abort
    let l:bufcount = bufnr('$')
    let l:currbufnr = 1
    let l:nummatches = 0
    let l:matchingbufnr = 0
    " walk the buffer count
    while l:currbufnr <= l:bufcount
        if (bufexists(l:currbufnr))
            let l:currbufname = bufname(l:currbufnr)
            if (match(l:currbufname, a:pattern) > -1)
                echo l:currbufnr.': '.bufname(l:currbufnr)
                let l:nummatches += 1
                let l:matchingbufnr = l:currbufnr
            endif
        endif
        let l:currbufnr += 1
    endwhile

    " only one match
    if (l:nummatches == 1)
        execute ':buffer '.l:matchingbufnr
    elseif (l:nummatches > 1)
        " more than one match
        let l:desiredbufnr = input('Enter buffer number: ')
        if (strlen(l:desiredbufnr) != 0)
            execute ':buffer '.l:desiredbufnr
        endif
    else
        echoerr 'No matching buffers'
    endif
endfunction

" open ranger as a file chooser
function! <SID>ranger()
    let l:temp = tempname()
    execute 'silent !xterm -e ranger --choosefiles='.shellescape(l:temp).' $PWD'
    if !filereadable(temp)
        redraw!
        return
    endif
    let l:names = readfile(l:temp)
    if empty(l:names)
        redraw!
        return
    endif
    execute 'edit '.fnameescape(l:names[0])
    for l:name in l:names[1:]
        execute 'argadd '.fnameescape(l:name)
    endfor
    redraw!
endfunction
