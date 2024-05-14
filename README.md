# My Neovim Config

![image](https://github.com/cloverdefa/nvim/blob/main/cover.jpg)

## 備份原有設定

```Shell
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## 安裝程式(已安裝可跳過)

```Shell
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install iterm2 neovim zoxide eza fzf bat fd ripgrep git-delta pyenv poetry nvm tmux
```

## 安裝相關套件(已安裝可跳過)

```Shell
pip install neovim pynvim debugpy isort
```

## NVM設定NODE(已安裝可跳過)

```Shell
nvm install node
npm install -g neovim tree-sitter-cli

```

## 下載設定

```Shell
git clone https://github.com/cloverdefa/nvim.git ~/.config/nvim
git clone https://github.com/junegunn/fzf-git.sh.git ~/fzf-git.sh
```

## 設定.zshrc(已設定可跳過)

```Shell
echo $(cat ~/.config/nvim/.zshrc) >> ~/.zshrc && source ~/.zshrc
```
