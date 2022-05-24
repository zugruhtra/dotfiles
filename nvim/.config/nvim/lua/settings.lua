HOME = os.getenv("HOME")

vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

-- basic settings
vim.opt.encoding = 'utf-8'
vim.opt.backspace = 'indent,eol,start'
vim.opt.completeopt = 'menuone,noselect'
vim.opt.history = 1000
vim.opt.dictionary = '/usr/share/dict/words'
vim.opt.startofline = true

-- Mapping waiting time
vim.opt.timeout = false
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 100

-- Display
vim.opt.showmatch = true
vim.opt.scrolloff = 3
vim.opt.synmaxcol = 300
vim.opt.laststatus = 2

vim.opt.list = false
vim.opt.foldenable = false
vim.opt.foldlevel = 4
vim.opt.foldmethod = 'syntax'
vim.opt.wrap = false
vim.opt.eol = false
vim.opt.showbreak = '↪'

-- Sidebar
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.signcolumn = 'yes'
vim.opt.modelines = 0
vim.opt.showcmd = true

-- Search
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.hlsearch = true
vim.opt.smartcase = true

vim.opt.matchtime = 2

-- White characters
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Backup files
vim.opt.backup = true
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undodir = HOME .. '/.vim/tmp/undo//'
vim.opt.backupdir = HOME .. '/.vim/tmp/backup//'
vim.opt.directory = '/.vim/tmp/swap//'

vim.cmd([[
    au FileType python          set ts=4 sw=4
    au FileType java,arduino    set ts=2 sw=2
    au BufRead,BufNewFile *.md  set ft=mkd tw=80 syntax=markdown
]])



-- Commands mode
vim.opt.wildmenu = true
vim.opt.wildignore = '.svn,CVS,.git,.hg,*.o,*.a,*.class,*.so,*.swp,*.jpg,*.png,*.xpm,*.gif'

-- Theme
vim.opt.background = 'dark'
vim.cmd('colorscheme gruvbox')


-- Misc.
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 12
vim.opt.sidescrolloff = 8
vim.opt.mouse = 'a'

-- FZF
vim.g.fzf_preview_window = {'--layout=reverse'}
