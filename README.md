My dot files.

## Install

Clone to `~/workspace/dotfiles`, then link the files that you edit. Each edit in the
home folder is then an edit in this repo.

```sh
D=~/workspace/dotfiles
mkdir -p ~/.vim ~/.vim/undodir
ln -sf $D/vim/.vimrc ~/.vimrc
ln -sf $D/vim/.vim/plugins.vim ~/.vim/plugins.vim
ln -sf $D/vim/.vim/plugin-config.vim ~/.vim/plugin-config.vim
ln -sf $D/vim/.vim/coc-settings.json ~/.vim/coc-settings.json
ln -sf $D/vim/.vim/autoclose.vim ~/.vim/autoclose.vim
mkdir -p ~/.vim/autoload && ln -sf $D/vim/.vim/autoload/plug.vim ~/.vim/autoload/plug.vim
ln -sf $D/tmux/.tmux.conf ~/.tmux.conf
```

Then open vim and run `:PlugInstall`.

## Requirements

- Node.js, for coc.nvim.
- ripgrep (`rg`), for `:grep` and fzf `:Rg`. Linux: `sudo apt install ripgrep`. macOS: `brew install ripgrep`.
- fzf: `:PlugInstall` downloads it to `~/.vim/plugged/fzf/bin`.
- macOS: change `set clipboard=unnamedplus` to `set clipboard=unnamed` in `.vimrc`.

## Keys

- `Ctrl-p`: find a file (fzf). `\g`: search text in all files (`:Rg`). `\b`: open buffers.
- `:find name<Tab>`: find a file with no plugin. `:grep word`, `:copen`, `]q`, `[q`: matches.
- `\c<Space>`: comment or uncomment (NERD Commenter). `Ctrl-t`: NERDTree.
- `Ctrl-h/j/k/l`: move between vim splits and tmux panes.
