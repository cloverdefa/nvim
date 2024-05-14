# My Neovim Config

![image](https://github.com/cloverdefa/nvim/blob/main/cover.jpg)

## 備份原有設定

```Shell
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

## 安裝程式

```Shell
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install iterm2 neovim zoxide eza fzf bat fd ripgrep git-delta pyenv poetry node tmux
```

## 下載設定

```Shell
git clone https://github.com/cloverdefa/nvim.git ~/.config/nvim
```

## 設定.zshrc

## 安裝相關套件

```Shell
node install -g neovim tree-sitter-cli
pip install neovim pynvim
```
