setlocal spell spelllang=en_us
set t_Co=256
set encoding=UTF-8
set nospell
set hlsearch
set number
set mouse=a
" keep copy-on-select and other GUI options
set clipboard+=autoselect guioptions+=a
" enter insert mode on left-click
nnoremap <LeftMouse> <LeftMouse>i
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=6
" when indenting with '>', use 2 spaces width
set shiftwidth=6
" On pressing tab, insert 2 spaces
set expandtab
set statusline+=%F
set modeline
set is hls
set background=dark
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set omnifunc=htmlcomplete#CompleteTags
set omnifunc=csscomplete#CompleteCSS
set omnifunc=csscomplete#CompleteHTML
set omnifunc=phpcomplete#CompletePHP
syntax on
" ALE: reasonable defaults from webinstall.dev/vim-ale
call plug#begin('~/.vim/autoload/plugged')
Plug 'dense-analysis/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'rodjek/vim-puppet'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'HugoNikanor/vim-breakpoint'
Plug 'ryanoasis/vim-devicons'
call plug#end()
"let g:ycm_global_ycm_extra_conf = '/home/williamjevans/.vim/autoload/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.company'
let g:airline#extensions#ale#enabled = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:ale_linters = {'python': ['flake8'], 'html': ['tidy'], 'css': ['csslint'], 'javascript': ['eslint'], 'java' : ['javac'], 'puppet': ['puppetlint']} 
let g:ale_fixers ={'python':['black'], 'javascript': ['eslint']}
"For Javascript run npm init @eslint/config before running a project"
"npm init @eslint/config 
let g:ale_fix_on_save = 1 
let g:ale_sign_error = '-->'
let g:ale_sign_warning = '--'
let g:airline_theme='bubblegum'
"NerdTree 
" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
inoremap " ""<right>
inoremap ' ''<right>
inoremap ( ()<right>
inoremap [ []<right>
inoremap { {}<right>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
inoremap < <><right>
autocmd BufWritePost *.py silent execute "! chmod u+x %"
autocmd BufNewFile *.py 0put =\"#!/usr/bin/env python3\<nl>\"|$

autocmd BufWritePost *.sh silent execute "! chmod u+x %"
autocmd BufNewFile *.sh 0put =\"#!/bin/bash\<nl>\"|$

autocmd BufWritePost *.c silent execute "! chmod u+x %"
autocmd BufNewFile *.c 0put =\"#include <stdio.h> \<nl>\"|$
autocmd BufNewFile *.c 1put =\"\<nl>\"|$
autocmd BufNewFile *.c 2put =\"int main(void)\<nl>\"|$
autocmd BufNewFile *.c 3put =\"{\<nl>\"|$
autocmd BufNewFile *.c 4put =\"\<nl>\"|$
autocmd BufNewFile *.c 6put =\"}\<nl>\"|$

autocmd BufWritePost *.cpp silent execute "! chmod u+x %"
autocmd BufNewFile *.cpp 0put =\"#include <iostream>\<nl>\"|$
autocmd BufNewFile *.cpp 1put =\"using namespace std;\"|$
autocmd BufNewFile *.cpp 2put =\"int main()\<nl>\"|$
autocmd BufNewFile *.cpp 3put =\"{\<nl>\"|$
autocmd BufNewFile *.cpp 4put =\"      std::cout << \\"\Hello World!\\"\ << std::endl;\"|$
autocmd BufNewFile *.cpp 5put =\"      return 0;\"|$
autocmd BufNewFile *.cpp 6put =\"}\<nl>\"|$

autocmd BufWritePost *.java silent execute "! chmod u+x %"
autocmd BufNewFile *.java 0put =\"package com.company;\"|$
autocmd BufNewFile *.java 1put =\"import java\.\util\.\Scanner;\"|$
autocmd BufNewFile *.java 2put =\"public class Template \{\"|$
autocmd BufNewFile *.java 3put = \"    public static void main\(\String\[\]\ args)\{\"|$
autocmd BufNewFile *.java 4put = \"        System.out.println\(\\"\\"\);\"|$
autocmd BufNewFile *.java 5put = \"\"|$
autocmd BufNewFile *.java 6put = \"           }\"|$
autocmd BufNewFile *.java 7put = \"   }\"|$
" PLUGIN: FZF
nnoremap <C-p> :<C-u>FZF<CR>
set guifont=FuraMono_NF:h14
