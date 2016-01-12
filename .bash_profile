#ターミナル起動時は[.bash_profile]から[.basrc],シェル切り替えでは「.bashrc」が単体で読み込まれる
#ので以後の設定は[/bashrc]に記述すればどのような場合でも同じパス設定が読み込まれる
if [ -f  ~/.dotfiles/.bashrc ];then
  . ~/dotfiles/.bashrc
fi


if [ -s ~/.nvm/nvm.sh ];then
  source ~/.nvm/nvm.sh
fi

echo 'login!!'

#bash_profileからbashrcを読み込む設定
test -r ~/dotfiles/.bashrc && . ~/dotfiles/.bashrc

