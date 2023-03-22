-- Automatize (PackerCompile)

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])



-- Globals Configs

vim.cmd([[ set encoding=utf8 ]])
vim.cmd([[ set nu! ]])
vim.cmd([[ set mouse=a ]])
vim.cmd([[ set wildmenu ]])
vim.cmd([[ set confirm ]])
vim.cmd([[ set incsearch ]])
vim.cmd([[ set title ]])
vim.cmd([[ set t_Co=256 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ set shiftwidth=2 ]])
vim.cmd([[ set expandtab ]])
vim.cmd([[ syntax on ]])
vim.cmd([[ set tabstop=4 ]])     
vim.cmd([[ set softtabstop=4 ]]) 
vim.cmd([[ set shiftwidth=4   ]])
vim.cmd([[ set smarttab       ]])
vim.cmd([[ set smartindent    ]])
vim.cmd([[ set hidden         ]])
vim.cmd([[ set ignorecase     ]])
vim.cmd([[ set smartcase      ]])
vim.cmd([[ set scrolloff=8    ]])
vim.cmd([[ set colorcolumn=100]])
vim.cmd([[ set signcolumn=yes ]])
vim.cmd([[ set cmdheight=2    ]])
vim.cmd([[ set updatetime=100 ]])
vim.cmd([[ set nobackup       ]])
vim.cmd([[ set nowritebackup  ]])
vim.cmd([[ set splitright     ]])
vim.cmd([[ set splitbelow     ]])
vim.cmd([[ set autoread       ]])
vim.cmd([[ filetype on        ]])
vim.cmd([[ filetype plugin on ]])
vim.cmd([[ set termguicolors  ]])
vim.cmd([[ colorscheme melange]])



-- enable copy and paste
vim.cmd([[ set clipboard=unnamedplus ]])

-- Barra de status

vim.cmd([[ let extension = expand('%:e') ]])


-- nvim-tree config

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- enable all languages in copilot
vim.cmd([[ let g:copilot_filetypes = {
                              \ 'xml': v:true,
                              \ 'html': v:true,
                              \ 'css': v:true,
                              \ 'javascript': v:true,
                              \ 'typescript': v:true,
                              \ 'json': v:true,
                              \ 'python': v:true,
                              \ 'lua': v:true,
                              \ 'c': v:true,
                              \ 'cpp': v:true,
                              \ 'java': v:true,
                              \ 'go': v:true,
                              \ 'rust': v:true,
                              \ 'php': v:true,
                              \ 'ruby': v:true,
                              \ 'elixir': v:true,
                              \ 'erlang': v:true,
                              \ 'haskell': v:true,
                              \ 'perl': v:true,
                              \ 'scala': v:true,
                              \ 'swift': v:true,
                              \ 'kotlin': v:true,
                              \ 'dart': v:true,
                              \ 'r': v:true,
                              \ 'sql': v:true,
                              \ 'bash': v:true,
                              \ 'powershell': v:true,
                              \ 'shell': v:true,
                              \ 'vim': v:true,
                              \ 'yaml': v:true,
                              \ 'toml': v:true,
                              \ 'dockerfile': v:true,
                              \ 'markdown': v:true,
                              \ 'tex': v:true,
                              \ 'latex': v:true,
                              \ 'vimwiki': v:true,
                              \ 'org': v:true,
                              \ 'pandoc': v:true,
                              \ 'asciidoc': v:true,
                              \ 'rst': v:true,
                              \ 'fennel': v:true,
                              \ 'clojure': v:true,
                              \ 'clojurescript': v:true,
                              \ 'lisp': v:true,
                              \ }

]])
