" --- General & Visuals ---
syntax on                   " Enable syntax highlighting
set number                  " Show current line number
set relativenumber          " Show relative line numbers for easy jump motions (e.g., 5j, 3k)
set cursorline              " Highlight the screen line of the cursor
set showmatch               " Briefly highlight matching brackets/parentheses
set ruler                   " Show cursor position (row, col) in the status bar
set scrolloff=5             " Keep at least 5 lines visible above/below cursor when scrolling

" --- Indentation & Tabs ---
set autoindent              " Copy indent from current line when starting a new line
set smartindent             " Smart auto-indenting for C-like syntax
set expandtab               " Convert tabs to spaces
set tabstop=4               " Number of visual spaces per tab
set shiftwidth=4            " Number of spaces to use for auto-indent steps
set softtabstop=4           " Number of spaces inserted/deleted when hitting Tab/Backspace

" --- Search ---
set incsearch               " Show search matches incrementally as you type
set hlsearch                " Highlight all matching search patterns

" --- Quality of Life & Usability ---
set mouse=a                 " Enable mouse support for scrolling, selecting, and resizing splits
set clipboard=unnamed       " Use system clipboard by default (use 'unnamedplus' on Linux/X11 if needed)
set backspace=indent,eol,start " Make backspace work as expected over indents, newlines, and insert start
set wildmenu                " Enhanced command-line tab completion menu
set hidden                  " Switch between buffers without having to save first
set undofile                " Maintain persistent undo history across Vim restarts
set splitbelow              " Open horizontal splits below the current window
set splitright              " Open vertical splits to the right of the current window

" --- Key Remaps ---
" Press <Space> in Normal mode to clear search highlighting
let mapleader = " "
" nnoremap <leader>h :nohlsearch<CR>

let &t_SI = "\e[6 q"  " Insert mode: steady vertical line (bar)
let &t_EI = "\e[2 q"  " Normal mode: steady block
let &t_SR = "\e[4 q"  " Replace mode: steady underline
