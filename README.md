# `neovim` and `dein.vim` setup
***
### 配置先ディレクトリ  
**init.lua** と **dein.toml**を下記ディレクトリに配置  
`~/.config/nvim/`
***
### neovim
1. インストール  
`brew install neovim`

1. バージョン確認  
`nvim -v`

***
### dein.vim  
1. インストーラーダウンロード  
`curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh`
1. インストール  
`sh ./installer.sh ~/.cache/dein`
***

### プラグイン操作
1. ファイル名検索  
`shift + p`

1. grep検索  
`shift + f`

1. ファイルツリー  
**表示**  
`shift + e`  

| ファイルツリーコマンド | 説明 |
| ---  | --- |
| j, k	| 上下に移動する |
| l |	フォルダを展開する、ファイルを開く |
| h	| フォルダを閉じる |
| e	| ファイルを開く |
| E	| 垂直分割してファイルを開く |
| t	| 新規タブでファイルを開く |
| Ctrl+m	| フォルダを開く |
| Ctrl+h	| 親ディレクトリに移動する |
| N	| ファイルを新規作成する |
| K	| ディレクトリを新規作成する |
| D	| ファイルを削除する |
| m	| ファイルを移動する |
| R	| ファイル名を変更する |
| -	| ファイルを選択する |
| C	| ファイルをコピーする |
| P	| ペーストする |
| M	| ファイルをコピーし、ペーストした時に元のファイルを削除する |
| y	| ファイルパスをコピーする |
| z	| ファイル名に合わせてウィンドウ幅を広げる |
| !	| 隠しファイルを表示/非表示する |

