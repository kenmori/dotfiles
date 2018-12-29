# dotfiles

ログインユーザーのrootでやること

```
$ git clone git@github.com:kenmori/dotfile2s.git ~/dotfiles2 --recursive
or
$ git clone https://github.com/kenmori/dotfiles2.git
$ sh ~/dotfiles2/setup.sh
```

run

```
$ curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh > install.sh
$ sh ./install.sh
see: https://github.com/Shougo/neobundle.vim
```

sh実行で書かれている`.vimrc`に貼り付けるべき記述をコピペ

`source dotfiles2/.vimrc`

vim dotfiles2

if open vim run

```
:NeoBundleInstall
:NeoBundleUpdate
```

＄HOMEで

oh-my-zshを入れる

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

<img src="https://kenjimorita.jp/wp-content/uploads/2018/12/efa419a642cbf049bb0af136e3c5b986.png" width="600"/>

install Homebrew
[https://brew.sh/index_ja](https://brew.sh/index_ja)

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

```

brew install vim
```

もし古いvimをインストールして使えないプラグインが出てきたら
.bashrcと.zhrcに以下を追加

```
export PATH="/usr/local/bin:$PATH
```

if [Error: No devel block is defined for vim]
run

```
brew install -v --fresh vim
```

確認

```
echo $PATH | tr ":" "\n"
```
Homebrewを使っていると/usr/binの前を/usr/local/binにしないと新しいvimが更新されない
→優先を変える

```
sudo vim /etc/paths
```

```
/usr/bin
/bin
/usr/sbin
/sbin
/usr/local/bin
```
を

```
/usr/local/bin
/usr/local/sbin ついでに足す
/usr/bin
/bin
/usr/sbin
/sbin
```
にする
変わったことを確認

```
echo $PATH | tr ":" "\n"
```
brewをアップデート

```
brew update && brew upgrade
```

デフォルトをbrewでinstallしたzshに変える

```
brew install zsh
cat /etc/shells
```

シェルの確認
brewに追加したものはusr/local/配下になるのでpashを通す

ダメだった場合

```
brew uninstall --force vim
brew cleanup --force -s vim
brew prune
brew install vim
```



zshにする
zshのパスを確認。デバイスのUserNameにする /User/[UserHome]/


[oh-my-zshをインストール](http://vdeep.net/zsh-oh-my-zsh)

```
 sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
[テーマを変える](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes)
.zshrcに

```
export ZSH_THEME=”テーマ名”
```

[hubをinstall](http://qiita.com/yaotti/items/a4a7f3f9a38d7d3415e3)

```
brew install hub

```

tmuxをinstall

```
brew install tmux
```

zsh-completions
```
brew install zsh-completions

.zshrc
fpath=(/path/to/homebrew/share/zsh-completions $fpath)

autoload -U compinit
compinit -u
```

.zshrc
#plugins=(git)
plugins=(git ruby osx bundler brew rails emoji-clock)




refrence
https://1000ch.net/posts/2015/dotfiles.html
http://d.hatena.ne.jp/amidaike/20130304/1362333675
