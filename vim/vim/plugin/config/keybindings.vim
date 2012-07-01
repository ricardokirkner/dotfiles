" define a more convenient Leader value
let mapleader = ","
let g:mapleader = ","

" numbers
" ########

" letters
" ########

" work more logically with wrapped lines
noremap j gj
noremap k gk
" Q formats paragraphs, instead of entering ex mode
noremap Q gq

" <C-g> shows filename and buffer number, too
nnoremap <C-g> 2<C-g>
" <C-l> redraws the screen and removes any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

"" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
"" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" allow to write to file with root privileges
cmap w!! w !sudo tee % > /dev/null

" clear search highlited results
nmap <silent> <leader>/ :nohlsearch<CR>

" arrow keys
" ###########

" make arrow keys work in insert mode
imap OA <Up>
imap OB <Down>
imap OC <Right>
imap OD <Left>

" tab navigation (next tab) with alt left / alt right
nnoremap <silent> <A-Right> :bn<CR>
nnoremap <silent> <A-Left> :bp<CR>
nnoremap <S-A-Right> gt
nnoremap <S-A-Left> gT

" ctrl + arrows - move around quickly
nnoremap <C-Up> {
nnoremap <C-Down> }
nnoremap <C-Right> El
nnoremap <C-Left> Bh

" shift + arrows - visually select text
nnoremap <S-Up> vk
nnoremap <S-Down> vj
nnoremap <S-Right> vl
nnoremap <S-Left> vh

" ctags
nnoremap <C-S-Left> <C-T>
nnoremap <C-S-Right> <C-]>

" function keys
" ##############
map <silent> <F4> :TlistToggle<CR>
map <silent> <F5> :NERDTreeToggle<CR>
" toggle line numbers and fold column for easy copying
map <silent> <S-F12> :set nonumber!<CR>:set foldcolumn=0<CR>

" other keys
" ###########

" <space> toggles folds opened and closed
nnoremap <Space> za
" <space> in visual mode creates a fold over the marked range
vnoremap <Space> zf

" diff
if &diff
    " easily handle diffing
    vnoremap < :diffget<CR>
    vnoremap > :diffput<CR>
else
    " visual shifting (builtin-repeat)
    vnoremap < <gv
    vnoremap > >gv
endif

" * and # search for next/previous of selected text when used in visual mode
vnoremap * y/<C-R>"<CR>
vnoremap # y?<C-R>"<CR>
