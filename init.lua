--dein-start------------------------------------------------------
local api = vim.api

local dein_dir = vim.fn.expand('~/.cache/dein')
local dein_repo_dir = dein_dir..'/repos/github.com/Shougo/dein.vim'

vim.o.runtimepath = dein_repo_dir..','..vim.o.runtimepath

-- dein install check
if (vim.fn.isdirectory(dein_repo_dir) == 0) then
  os.execute('git clone https://github.com/Shougo/dein.vim '..dein_repo_dir)
end

-- begin settings
if (vim.fn['dein#load_state'](dein_dir) == 1) then
  local rc_dir = vim.fn.expand('~/.config/nvim')
  local toml = rc_dir..'/dein.toml'
  vim.fn['dein#begin'](dein_dir)
  vim.fn['dein#load_toml'](toml, { lazy = 0 })
  vim.fn['dein#end']()
  vim.fn['dein#save_state']()
end

-- plugin install check
if (vim.fn['dein#check_install']() ~= 0) then
  vim.fn['dein#install']()
end

-- plugin remove check
local removed_plugins = vim.fn['dein#check_clean']()
if vim.fn.len(removed_plugins) > 0 then
  vim.fn.map(removed_plugins, "delete(v:val, 'rf')")
  vim.fn['dein#recache_runtimepath']()
end
--dein-end------------------------------------------------------

--オプション
--Leaderをスペースに割り当て
vim.g.mapleader = ' '

--vimrc時代の設定
vim.cmd 'set number'
vim.cmd 'set autoindent'
vim.cmd 'set tabstop=4'
vim.cmd 'set expandtab'
vim.cmd 'set shiftwidth=4'
vim.cmd 'set incsearch'
vim.cmd 'set laststatus=2'
vim.cmd 'syntax on'
vim.cmd 'set ruler'
vim.cmd 'set showmatch'
vim.cmd 'set clipboard+=unnamed'
vim.cmd 'set path+=~/studyProject/**'
vim.cmd 'nnoremap gr gT'
vim.cmd 'nnoremap <leader>e <cmd>Fern . -reveal=% -drawer<cr>'

--upper lower ignore
vim.o.ignorecase = true
vim.o.smartcase = true--大文字がある場合区別する


--ステータスラインのカスタマイズ
local lualine = require('lualine')
lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox_material',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {
      {
    'filename',
    'g:coc_status'
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
