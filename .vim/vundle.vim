set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'tpope/vim-speeddating'
" Plugin 'scrooloose/syntastic'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" languages
Plugin 'derekwyatt/vim-scala'
Plugin 'ensime/ensime-vim'

call vundle#end()            " required
filetype plugin indent on    " required
